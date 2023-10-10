#!/bin/sh

gcc -D NO_C11_THREADS -pthread -I ../src/ ../test/test.c -o test

if [ $? -ne 0 ]
then
	echo "failled to build"
	exit 1
fi

./test.exe

if [ $? -ne 0 ]
then
	echo "test failled"
	exit 1
fi

exit 1
