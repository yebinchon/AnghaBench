
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int evtchn; } ;


 scalar_t__ WARN (int,char*,unsigned int) ;
 TYPE_1__* info_for_irq (unsigned int) ;
 unsigned int nr_irqs ;

unsigned int evtchn_from_irq(unsigned irq)
{
 if (WARN(irq >= nr_irqs, "Invalid irq %d!\n", irq))
  return 0;

 return info_for_irq(irq)->evtchn;
}
