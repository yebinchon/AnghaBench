
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1_INSTAT ;
 int B1_OUTSTAT ;
 int T1_IRQMASTER ;
 int T1_RESETBOARD ;
 int b1_reset (unsigned int) ;
 int t1outp (unsigned int,int ,int) ;

__attribute__((used)) static inline void t1_reset(unsigned int base)
{

 b1_reset(base);

 t1outp(base, B1_INSTAT, 0x00);
 t1outp(base, B1_OUTSTAT, 0x00);
 t1outp(base, T1_IRQMASTER, 0x00);

 t1outp(base, T1_RESETBOARD, 0xf);
}
