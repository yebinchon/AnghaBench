
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int VALID_EVTCHN (int) ;
 int clear_evtchn (int) ;
 int evtchn_from_irq (int ) ;
 int irq_move_masked_irq (struct irq_data*) ;
 int irqd_irq_disabled (struct irq_data*) ;
 int irqd_is_setaffinity_pending (struct irq_data*) ;
 scalar_t__ likely (int) ;
 int test_and_set_mask (int) ;
 scalar_t__ unlikely (int ) ;
 int unmask_evtchn (int) ;

__attribute__((used)) static void ack_dynirq(struct irq_data *data)
{
 int evtchn = evtchn_from_irq(data->irq);

 if (!VALID_EVTCHN(evtchn))
  return;

 if (unlikely(irqd_is_setaffinity_pending(data)) &&
     likely(!irqd_irq_disabled(data))) {
  int masked = test_and_set_mask(evtchn);

  clear_evtchn(evtchn);

  irq_move_masked_irq(data);

  if (!masked)
   unmask_evtchn(evtchn);
 } else
  clear_evtchn(evtchn);
}
