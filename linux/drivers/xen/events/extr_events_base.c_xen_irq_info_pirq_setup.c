
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {unsigned int pirq; unsigned int gsi; unsigned char flags; int domid; } ;
struct TYPE_4__ {TYPE_1__ pirq; } ;
struct irq_info {TYPE_2__ u; } ;


 int IRQT_PIRQ ;
 struct irq_info* info_for_irq (unsigned int) ;
 int xen_irq_info_common_setup (struct irq_info*,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static int xen_irq_info_pirq_setup(unsigned irq,
       unsigned evtchn,
       unsigned pirq,
       unsigned gsi,
       uint16_t domid,
       unsigned char flags)
{
 struct irq_info *info = info_for_irq(irq);

 info->u.pirq.pirq = pirq;
 info->u.pirq.gsi = gsi;
 info->u.pirq.domid = domid;
 info->u.pirq.flags = flags;

 return xen_irq_info_common_setup(info, irq, IRQT_PIRQ, evtchn, 0);
}
