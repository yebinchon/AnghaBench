
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ evtchn; } ;


 int set_evtchn_to_irq (scalar_t__,int) ;

__attribute__((used)) static void xen_irq_info_cleanup(struct irq_info *info)
{
 set_evtchn_to_irq(info->evtchn, -1);
 info->evtchn = 0;
}
