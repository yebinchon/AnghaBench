
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int,int) ;

__attribute__((used)) static inline void superio_outb(int base, int reg, u8 val)
{
 outb(reg, base);
 outb(val, base + 1);
}
