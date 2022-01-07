
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;


 int cpu_online_mask ;
 unsigned int cpumask_first_and (struct cpumask const*,int ) ;
 int cpumask_of (unsigned int) ;
 int evtchn_from_irq (int ) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 int xen_rebind_evtchn_to_cpu (int ,unsigned int) ;

__attribute__((used)) static int set_affinity_irq(struct irq_data *data, const struct cpumask *dest,
       bool force)
{
 unsigned tcpu = cpumask_first_and(dest, cpu_online_mask);
 int ret = xen_rebind_evtchn_to_cpu(evtchn_from_irq(data->irq), tcpu);

 if (!ret)
  irq_data_update_effective_affinity(data, cpumask_of(tcpu));

 return ret;
}
