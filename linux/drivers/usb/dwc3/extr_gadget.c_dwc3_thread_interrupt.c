
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {struct dwc3* dwc; } ;
struct dwc3 {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int dwc3_process_event_buf (struct dwc3_event_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t dwc3_thread_interrupt(int irq, void *_evt)
{
 struct dwc3_event_buffer *evt = _evt;
 struct dwc3 *dwc = evt->dwc;
 unsigned long flags;
 irqreturn_t ret = IRQ_NONE;

 spin_lock_irqsave(&dwc->lock, flags);
 ret = dwc3_process_event_buf(evt);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
