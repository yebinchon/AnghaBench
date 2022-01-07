
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T1_IRQMASTER ;
 int t1outp (unsigned int,int ,int) ;

__attribute__((used)) static inline void t1_disable_irq(unsigned int base)
{
 t1outp(base, T1_IRQMASTER, 0x00);
}
