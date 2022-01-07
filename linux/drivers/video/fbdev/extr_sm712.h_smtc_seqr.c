
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int smtc_mmiorb (int) ;
 int smtc_mmiowb (int,int) ;

__attribute__((used)) static inline unsigned int smtc_seqr(int reg)
{
 smtc_mmiowb(reg, 0x3c4);
 return smtc_mmiorb(0x3c5);
}
