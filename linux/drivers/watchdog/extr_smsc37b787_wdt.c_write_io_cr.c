
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOPORT ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void write_io_cr(unsigned char reg, unsigned char data)
{
 outb(reg, IOPORT);
 outb(data, IOPORT+1);
}
