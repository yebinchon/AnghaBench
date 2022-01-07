
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int virq; } ;
struct irq_info {TYPE_1__ u; } ;


 int IRQT_VIRQ ;
 struct irq_info* info_for_irq (unsigned int) ;
 unsigned int* per_cpu (int ,unsigned int) ;
 int virq_to_irq ;
 int xen_irq_info_common_setup (struct irq_info*,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static int xen_irq_info_virq_setup(unsigned cpu,
       unsigned irq,
       unsigned evtchn,
       unsigned virq)
{
 struct irq_info *info = info_for_irq(irq);

 info->u.virq = virq;

 per_cpu(virq_to_irq, cpu)[virq] = irq;

 return xen_irq_info_common_setup(info, irq, IRQT_VIRQ, evtchn, 0);
}
