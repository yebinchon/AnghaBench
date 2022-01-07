
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 int get_evtchn_to_irq (unsigned int) ;
 int unbind_from_irq (int) ;

void evtchn_put(unsigned int evtchn)
{
 int irq = get_evtchn_to_irq(evtchn);
 if (WARN_ON(irq == -1))
  return;
 unbind_from_irq(irq);
}
