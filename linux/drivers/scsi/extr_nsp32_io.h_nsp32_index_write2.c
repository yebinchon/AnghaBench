
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_REG_LOW ;
 scalar_t__ INDEX_REG ;
 int outb (unsigned int,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void nsp32_index_write2(unsigned int base,
          unsigned int reg,
          unsigned short val)
{
 outb(reg, base + INDEX_REG );
 outw(val, base + DATA_REG_LOW);
}
