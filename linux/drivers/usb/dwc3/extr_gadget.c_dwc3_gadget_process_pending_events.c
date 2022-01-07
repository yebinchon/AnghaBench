
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int pending_events; int irq_gadget; int ev_buf; } ;


 int dwc3_interrupt (int ,int ) ;
 int enable_irq (int ) ;

void dwc3_gadget_process_pending_events(struct dwc3 *dwc)
{
 if (dwc->pending_events) {
  dwc3_interrupt(dwc->irq_gadget, dwc->ev_buf);
  dwc->pending_events = 0;
  enable_irq(dwc->irq_gadget);
 }
}
