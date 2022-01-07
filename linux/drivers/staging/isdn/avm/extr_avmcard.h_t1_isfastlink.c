
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ T1_IDENT ;
 int inb (scalar_t__) ;

__attribute__((used)) static inline int t1_isfastlink(unsigned int base)
{
 return (inb(base + T1_IDENT) & ~0x82) == 1;
}
