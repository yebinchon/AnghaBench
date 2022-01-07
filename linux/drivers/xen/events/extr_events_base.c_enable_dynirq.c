
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 scalar_t__ VALID_EVTCHN (int) ;
 int evtchn_from_irq (int ) ;
 int unmask_evtchn (int) ;

__attribute__((used)) static void enable_dynirq(struct irq_data *data)
{
 int evtchn = evtchn_from_irq(data->irq);

 if (VALID_EVTCHN(evtchn))
  unmask_evtchn(evtchn);
}
