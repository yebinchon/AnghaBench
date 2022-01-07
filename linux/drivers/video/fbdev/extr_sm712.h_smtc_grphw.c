
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smtc_mmiowb (int,int) ;

__attribute__((used)) static inline void smtc_grphw(int reg, int val)
{
 smtc_mmiowb(reg, 0x3ce);
 smtc_mmiowb(val, 0x3cf);
}
