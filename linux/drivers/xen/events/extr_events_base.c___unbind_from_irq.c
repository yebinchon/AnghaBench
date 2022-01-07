
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ refcnt; } ;




 scalar_t__ VALID_EVTCHN (int) ;
 unsigned int cpu_from_irq (unsigned int) ;
 int evtchn_from_irq (unsigned int) ;
 size_t ipi_from_irq (unsigned int) ;
 int ipi_to_irq ;
 struct irq_info* irq_get_handler_data (unsigned int) ;
 int* per_cpu (int ,unsigned int) ;
 int type_from_irq (unsigned int) ;
 size_t virq_from_irq (unsigned int) ;
 int virq_to_irq ;
 int xen_evtchn_close (int) ;
 int xen_free_irq (unsigned int) ;
 int xen_irq_info_cleanup (struct irq_info*) ;

__attribute__((used)) static void __unbind_from_irq(unsigned int irq)
{
 int evtchn = evtchn_from_irq(irq);
 struct irq_info *info = irq_get_handler_data(irq);

 if (info->refcnt > 0) {
  info->refcnt--;
  if (info->refcnt != 0)
   return;
 }

 if (VALID_EVTCHN(evtchn)) {
  unsigned int cpu = cpu_from_irq(irq);

  xen_evtchn_close(evtchn);

  switch (type_from_irq(irq)) {
  case 128:
   per_cpu(virq_to_irq, cpu)[virq_from_irq(irq)] = -1;
   break;
  case 129:
   per_cpu(ipi_to_irq, cpu)[ipi_from_irq(irq)] = -1;
   break;
  default:
   break;
  }

  xen_irq_info_cleanup(info);
 }

 xen_free_irq(irq);
}
