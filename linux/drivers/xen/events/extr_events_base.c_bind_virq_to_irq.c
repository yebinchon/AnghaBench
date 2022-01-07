
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ type; } ;
struct evtchn_bind_virq {unsigned int virq; int port; int vcpu; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int EVTCHNOP_bind_virq ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_virq*) ;
 scalar_t__ IRQT_VIRQ ;
 int WARN_ON (int) ;
 int __unbind_from_irq (int) ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int find_virq (unsigned int,unsigned int) ;
 int handle_edge_irq ;
 int handle_percpu_irq ;
 struct irq_info* info_for_irq (int) ;
 int irq_mapping_update_lock ;
 int irq_set_chip_and_handler_name (int,int *,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* per_cpu (int ,unsigned int) ;
 int virq_to_irq ;
 int xen_allocate_irq_dynamic () ;
 int xen_dynamic_chip ;
 int xen_irq_info_virq_setup (unsigned int,int,int,unsigned int) ;
 int xen_percpu_chip ;
 int xen_vcpu_nr (unsigned int) ;

int bind_virq_to_irq(unsigned int virq, unsigned int cpu, bool percpu)
{
 struct evtchn_bind_virq bind_virq;
 int evtchn, irq, ret;

 mutex_lock(&irq_mapping_update_lock);

 irq = per_cpu(virq_to_irq, cpu)[virq];

 if (irq == -1) {
  irq = xen_allocate_irq_dynamic();
  if (irq < 0)
   goto out;

  if (percpu)
   irq_set_chip_and_handler_name(irq, &xen_percpu_chip,
            handle_percpu_irq, "virq");
  else
   irq_set_chip_and_handler_name(irq, &xen_dynamic_chip,
            handle_edge_irq, "virq");

  bind_virq.virq = virq;
  bind_virq.vcpu = xen_vcpu_nr(cpu);
  ret = HYPERVISOR_event_channel_op(EVTCHNOP_bind_virq,
      &bind_virq);
  if (ret == 0)
   evtchn = bind_virq.port;
  else {
   if (ret == -EEXIST)
    ret = find_virq(virq, cpu);
   BUG_ON(ret < 0);
   evtchn = ret;
  }

  ret = xen_irq_info_virq_setup(cpu, irq, evtchn, virq);
  if (ret < 0) {
   __unbind_from_irq(irq);
   irq = ret;
   goto out;
  }

  bind_evtchn_to_cpu(evtchn, cpu);
 } else {
  struct irq_info *info = info_for_irq(irq);
  WARN_ON(info == ((void*)0) || info->type != IRQT_VIRQ);
 }

out:
 mutex_unlock(&irq_mapping_update_lock);

 return irq;
}
