
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_REG_LOW ;
 scalar_t__ INDEX_REG ;
 unsigned short inw (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline unsigned short nsp32_index_read2(unsigned int base,
            unsigned int reg)
{
 outb(reg, base + INDEX_REG);
 return inw(base + DATA_REG_LOW);
}
