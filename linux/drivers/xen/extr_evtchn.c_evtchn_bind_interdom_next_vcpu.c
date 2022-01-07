
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int affinity; } ;
struct irq_desc {int lock; TYPE_1__ irq_common_data; } ;


 int bind_last_selected_cpu ;
 int cpu_online_mask ;
 unsigned int cpumask_first_and (int ,int ) ;
 unsigned int cpumask_next_and (unsigned int,int ,int ) ;
 unsigned int irq_from_evtchn (int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 unsigned int nr_cpu_ids ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int this_cpu_read (int ) ;
 int this_cpu_write (int ,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int xen_set_affinity_evtchn (struct irq_desc*,unsigned int) ;

__attribute__((used)) static void evtchn_bind_interdom_next_vcpu(int evtchn)
{
 unsigned int selected_cpu, irq;
 struct irq_desc *desc;
 unsigned long flags;

 irq = irq_from_evtchn(evtchn);
 desc = irq_to_desc(irq);

 if (!desc)
  return;

 raw_spin_lock_irqsave(&desc->lock, flags);
 selected_cpu = this_cpu_read(bind_last_selected_cpu);
 selected_cpu = cpumask_next_and(selected_cpu,
   desc->irq_common_data.affinity, cpu_online_mask);

 if (unlikely(selected_cpu >= nr_cpu_ids))
  selected_cpu = cpumask_first_and(desc->irq_common_data.affinity,
    cpu_online_mask);

 this_cpu_write(bind_last_selected_cpu, selected_cpu);


 xen_set_affinity_evtchn(desc, selected_cpu);
 raw_spin_unlock_irqrestore(&desc->lock, flags);
}
