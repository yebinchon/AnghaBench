
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ type; } ;
struct evtchn_bind_ipi {int port; int vcpu; } ;


 int BUG () ;
 int EVTCHNOP_bind_ipi ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_ipi*) ;
 scalar_t__ IRQT_IPI ;
 int WARN_ON (int) ;
 int __unbind_from_irq (int) ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int handle_percpu_irq ;
 struct irq_info* info_for_irq (int) ;
 int ipi_to_irq ;
 int irq_mapping_update_lock ;
 int irq_set_chip_and_handler_name (int,int *,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* per_cpu (int ,unsigned int) ;
 int xen_allocate_irq_dynamic () ;
 int xen_irq_info_ipi_setup (unsigned int,int,int,unsigned int) ;
 int xen_percpu_chip ;
 int xen_vcpu_nr (unsigned int) ;

__attribute__((used)) static int bind_ipi_to_irq(unsigned int ipi, unsigned int cpu)
{
 struct evtchn_bind_ipi bind_ipi;
 int evtchn, irq;
 int ret;

 mutex_lock(&irq_mapping_update_lock);

 irq = per_cpu(ipi_to_irq, cpu)[ipi];

 if (irq == -1) {
  irq = xen_allocate_irq_dynamic();
  if (irq < 0)
   goto out;

  irq_set_chip_and_handler_name(irq, &xen_percpu_chip,
           handle_percpu_irq, "ipi");

  bind_ipi.vcpu = xen_vcpu_nr(cpu);
  if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_ipi,
      &bind_ipi) != 0)
   BUG();
  evtchn = bind_ipi.port;

  ret = xen_irq_info_ipi_setup(cpu, irq, evtchn, ipi);
  if (ret < 0) {
   __unbind_from_irq(irq);
   irq = ret;
   goto out;
  }
  bind_evtchn_to_cpu(evtchn, cpu);
 } else {
  struct irq_info *info = info_for_irq(irq);
  WARN_ON(info == ((void*)0) || info->type != IRQT_IPI);
 }

 out:
 mutex_unlock(&irq_mapping_update_lock);
 return irq;
}
