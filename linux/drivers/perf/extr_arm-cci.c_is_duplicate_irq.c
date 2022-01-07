
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_duplicate_irq(int irq, int *irqs, int nr_irqs)
{
 int i;

 for (i = 0; i < nr_irqs; i++)
  if (irq == irqs[i])
   return 1;

 return 0;
}
