
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOPORT ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void select_io_device(unsigned char devno)
{
 outb(0x07, IOPORT);
 outb(devno, IOPORT+1);
}
