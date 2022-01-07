
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VALID_EVTCHN (int) ;
 int evtchn_from_irq (int) ;
 int notify_remote_via_evtchn (int) ;

void notify_remote_via_irq(int irq)
{
 int evtchn = evtchn_from_irq(irq);

 if (VALID_EVTCHN(evtchn))
  notify_remote_via_evtchn(evtchn);
}
