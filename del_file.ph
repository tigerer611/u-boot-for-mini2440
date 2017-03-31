#!/bin/bash
TOPDIR=${PWD}
cd ${TOPDIR}/board/ && rm -rf `ls | grep -v "samsung"`
cd ${TOPDIR}/board/samsung/ && rm -rf `ls | grep -v "smdk2410"`
cd ${TOPDIR}/cpu/ && rm -rf `ls | grep -v "arm920t"`
cd ${TOPDIR}/include/ && rm -rf `ls | grep "asm-" | egrep -v "arm|generic"`
cd ${TOPDIR}/include/asm-arm/ && rm -rf `ls | grep "arch-" | grep -v "s3c24x0"`
cd ${TOPDIR}/include/configs/ && rm -rf `ls | grep -v "smdk2410.h"`
cd ${TOPDIR} && rm -rf `ls | grep "lib_" | egrep -v "arm|generic"`
