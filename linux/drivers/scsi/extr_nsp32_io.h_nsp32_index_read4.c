
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_REG_HI ;
 scalar_t__ DATA_REG_LOW ;
 scalar_t__ INDEX_REG ;
 unsigned long inw (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline unsigned long nsp32_index_read4(unsigned int base,
           unsigned int reg)
{
 unsigned long h,l;

 outb(reg, base + INDEX_REG);
 l = inw(base + DATA_REG_LOW);
 h = inw(base + DATA_REG_HI );

 return ((h << 16) | l);
}
