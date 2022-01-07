
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_bit (int,unsigned long*) ;
 unsigned long superio_inb (int,int) ;
 int superio_outb (int,int,unsigned long) ;

__attribute__((used)) static inline void superio_set_bit(int base, int reg, int bit)
{
 unsigned long val = superio_inb(base, reg);
 __set_bit(bit, &val);
 superio_outb(base, reg, val);
}
