
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smtc_mmiorb (int) ;
 int smtc_mmiowb (int,int) ;

__attribute__((used)) static inline void smtc_attrw(int reg, int val)
{
 smtc_mmiorb(0x3da);
 smtc_mmiowb(reg, 0x3c0);
 smtc_mmiorb(0x3c1);
 smtc_mmiowb(val, 0x3c0);
}
