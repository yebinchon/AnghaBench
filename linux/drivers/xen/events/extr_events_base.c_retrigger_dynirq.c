
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int VALID_EVTCHN (unsigned int) ;
 unsigned int evtchn_from_irq (int ) ;
 int set_evtchn (unsigned int) ;
 int test_and_set_mask (unsigned int) ;
 int unmask_evtchn (unsigned int) ;

__attribute__((used)) static int retrigger_dynirq(struct irq_data *data)
{
 unsigned int evtchn = evtchn_from_irq(data->irq);
 int masked;

 if (!VALID_EVTCHN(evtchn))
  return 0;

 masked = test_and_set_mask(evtchn);
 set_evtchn(evtchn);
 if (!masked)
  unmask_evtchn(evtchn);

 return 1;
}
