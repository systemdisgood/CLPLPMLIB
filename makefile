#CC=clang++
CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=src/main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=bin/main.out

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	rm src/*.o

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

