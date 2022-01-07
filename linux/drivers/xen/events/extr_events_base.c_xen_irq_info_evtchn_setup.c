
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {int dummy; } ;


 int IRQT_EVTCHN ;
 struct irq_info* info_for_irq (unsigned int) ;
 int xen_irq_info_common_setup (struct irq_info*,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static int xen_irq_info_evtchn_setup(unsigned irq,
         unsigned evtchn)
{
 struct irq_info *info = info_for_irq(irq);

 return xen_irq_info_common_setup(info, irq, IRQT_EVTCHN, evtchn, 0);
}
