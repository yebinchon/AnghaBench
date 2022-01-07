
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VALID_EVTCHN (int) ;
 int clear_evtchn (int) ;
 int evtchn_from_irq (int) ;

void xen_clear_irq_pending(int irq)
{
 int evtchn = evtchn_from_irq(irq);

 if (VALID_EVTCHN(evtchn))
  clear_evtchn(evtchn);
}
