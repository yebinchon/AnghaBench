
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pirq_from_irq (unsigned int) ;

int xen_pirq_from_irq(unsigned irq)
{
 return pirq_from_irq(irq);
}
