
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pr_devel (char*,int) ;

__attribute__((used)) static irqreturn_t pd6729_test(int irq, void *dev)
{
 pr_devel("-> hit on irq %d\n", irq);
 return IRQ_HANDLED;
}
