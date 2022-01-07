
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOPORT ;
 char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline char read_io_cr(unsigned char reg)
{
 outb(reg, IOPORT);
 return inb(IOPORT+1);
}
