
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ type; int cpu; } ;


 int BUG_ON (int) ;
 scalar_t__ IRQT_UNBOUND ;
 scalar_t__ WARN_ON (int) ;
 int bind_evtchn_to_cpu (int,int ) ;
 int cpumask_of (int ) ;
 int disable_irq (int) ;
 int enable_irq (int) ;
 int get_evtchn_to_irq (int) ;
 struct irq_info* info_for_irq (int) ;
 int irq_mapping_update_lock ;
 int irq_set_affinity (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xen_irq_info_evtchn_setup (int,int) ;

void rebind_evtchn_irq(int evtchn, int irq)
{
 struct irq_info *info = info_for_irq(irq);

 if (WARN_ON(!info))
  return;



 disable_irq(irq);

 mutex_lock(&irq_mapping_update_lock);


 BUG_ON(get_evtchn_to_irq(evtchn) != -1);


 BUG_ON(info->type == IRQT_UNBOUND);

 (void)xen_irq_info_evtchn_setup(irq, evtchn);

 mutex_unlock(&irq_mapping_update_lock);

        bind_evtchn_to_cpu(evtchn, info->cpu);

 irq_set_affinity(irq, cpumask_of(info->cpu));


 enable_irq(irq);
}
