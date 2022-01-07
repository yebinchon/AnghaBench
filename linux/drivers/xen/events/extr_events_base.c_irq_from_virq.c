
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* per_cpu (int ,unsigned int) ;
 int virq_to_irq ;

int irq_from_virq(unsigned int cpu, unsigned int virq)
{
 return per_cpu(virq_to_irq, cpu)[virq];
}
