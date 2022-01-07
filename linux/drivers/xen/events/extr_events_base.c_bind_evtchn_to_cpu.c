
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {unsigned int cpu; } ;


 int BUG_ON (int) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (unsigned int) ;
 int get_evtchn_to_irq (unsigned int) ;
 struct irq_info* info_for_irq (int) ;
 int irq_get_affinity_mask (int) ;
 int xen_evtchn_port_bind_to_cpu (struct irq_info*,unsigned int) ;

__attribute__((used)) static void bind_evtchn_to_cpu(unsigned int chn, unsigned int cpu)
{
 int irq = get_evtchn_to_irq(chn);
 struct irq_info *info = info_for_irq(irq);

 BUG_ON(irq == -1);



 xen_evtchn_port_bind_to_cpu(info, cpu);

 info->cpu = cpu;
}
