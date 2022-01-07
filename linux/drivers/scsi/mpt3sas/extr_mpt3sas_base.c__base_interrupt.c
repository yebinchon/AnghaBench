
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter_reply_queue {scalar_t__ irq_poll_scheduled; struct MPT3SAS_ADAPTER* ioc; } ;
struct MPT3SAS_ADAPTER {scalar_t__ mask_interrupts; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ _base_process_reply_queue (struct adapter_reply_queue*) ;

__attribute__((used)) static irqreturn_t
_base_interrupt(int irq, void *bus_id)
{
 struct adapter_reply_queue *reply_q = bus_id;
 struct MPT3SAS_ADAPTER *ioc = reply_q->ioc;

 if (ioc->mask_interrupts)
  return IRQ_NONE;
 if (reply_q->irq_poll_scheduled)
  return IRQ_HANDLED;
 return ((_base_process_reply_queue(reply_q) > 0) ?
   IRQ_HANDLED : IRQ_NONE);
}
