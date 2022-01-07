
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intc_big_lock ;
 unsigned int* intc_prio_level ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void intc_set_prio_level(unsigned int irq, unsigned int level)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&intc_big_lock, flags);
 intc_prio_level[irq] = level;
 raw_spin_unlock_irqrestore(&intc_big_lock, flags);
}
