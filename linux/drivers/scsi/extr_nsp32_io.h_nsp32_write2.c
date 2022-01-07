
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outw (unsigned short,unsigned int) ;

__attribute__((used)) static inline void nsp32_write2(unsigned int base,
    unsigned int index,
    unsigned short val)
{
 outw(val, (base + index));
}
