
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int I365_CSC ;
 int IRQ_HANDLED ;
 int i365_get (int ,int ) ;
 int irq_hits ;
 int irq_sock ;
 int pr_debug (char*,int) ;

__attribute__((used)) static irqreturn_t i365_count_irq(int irq, void *dev)
{
    i365_get(irq_sock, I365_CSC);
    irq_hits++;
    pr_debug("i82365: -> hit on irq %d\n", irq);
    return IRQ_HANDLED;
}
