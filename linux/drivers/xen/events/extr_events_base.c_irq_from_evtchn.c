
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_evtchn_to_irq (unsigned int) ;

unsigned irq_from_evtchn(unsigned int evtchn)
{
 return get_evtchn_to_irq(evtchn);
}
