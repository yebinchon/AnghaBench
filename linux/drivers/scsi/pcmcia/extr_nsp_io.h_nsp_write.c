
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned char,unsigned int) ;

__attribute__((used)) static inline void nsp_write(unsigned int base,
        unsigned int index,
        unsigned char val)
{
 outb(val, (base + index));
}
