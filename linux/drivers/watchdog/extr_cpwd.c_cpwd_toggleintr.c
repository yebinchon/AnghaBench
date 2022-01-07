
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpwd {scalar_t__ regs; TYPE_1__* devs; } ;
struct TYPE_2__ {unsigned char intr_mask; } ;


 scalar_t__ PLD_IMASK ;
 unsigned char WD0_INTR_MASK ;
 unsigned char WD1_INTR_MASK ;
 unsigned char WD2_INTR_MASK ;
 int WD_INTR_ON ;
 unsigned char cpwd_readb (scalar_t__) ;
 int cpwd_writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void cpwd_toggleintr(struct cpwd *p, int index, int enable)
{
 unsigned char curregs = cpwd_readb(p->regs + PLD_IMASK);
 unsigned char setregs =
  (index == -1) ?
  (WD0_INTR_MASK | WD1_INTR_MASK | WD2_INTR_MASK) :
  (p->devs[index].intr_mask);

 if (enable == WD_INTR_ON)
  curregs &= ~setregs;
 else
  curregs |= setregs;

 cpwd_writeb(curregs, p->regs + PLD_IMASK);
}
