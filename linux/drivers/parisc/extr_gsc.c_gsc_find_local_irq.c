
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_IRQ ;

int gsc_find_local_irq(unsigned int irq, int *global_irqs, int limit)
{
 int local_irq;

 for (local_irq = 0; local_irq < limit; local_irq++) {
  if (global_irqs[local_irq] == irq)
   return local_irq;
 }

 return NO_IRQ;
}
