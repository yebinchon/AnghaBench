
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipi; } ;
struct irq_info {TYPE_1__ u; } ;
typedef enum ipi_vector { ____Placeholder_ipi_vector } ipi_vector ;


 int IRQT_IPI ;
 struct irq_info* info_for_irq (unsigned int) ;
 int ipi_to_irq ;
 unsigned int* per_cpu (int ,unsigned int) ;
 int xen_irq_info_common_setup (struct irq_info*,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static int xen_irq_info_ipi_setup(unsigned cpu,
      unsigned irq,
      unsigned evtchn,
      enum ipi_vector ipi)
{
 struct irq_info *info = info_for_irq(irq);

 info->u.ipi = ipi;

 per_cpu(ipi_to_irq, cpu)[ipi] = irq;

 return xen_irq_info_common_setup(info, irq, IRQT_IPI, evtchn, 0);
}
