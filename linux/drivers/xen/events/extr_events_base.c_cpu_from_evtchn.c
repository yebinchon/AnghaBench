
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpu_from_irq (int) ;
 int get_evtchn_to_irq (unsigned int) ;

unsigned int cpu_from_evtchn(unsigned int evtchn)
{
 int irq = get_evtchn_to_irq(evtchn);
 unsigned ret = 0;

 if (irq != -1)
  ret = cpu_from_irq(irq);

 return ret;
}
