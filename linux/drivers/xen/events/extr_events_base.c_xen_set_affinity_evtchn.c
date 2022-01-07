
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;


 int cpumask_of (unsigned int) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int set_affinity_irq (struct irq_data*,int ,int) ;

int xen_set_affinity_evtchn(struct irq_desc *desc, unsigned int tcpu)
{
 struct irq_data *d = irq_desc_get_irq_data(desc);

 return set_affinity_irq(d, cpumask_of(tcpu), 0);
}
