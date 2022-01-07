
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {int dummy; } ;
typedef int irqreturn_t ;


 int dwc3_check_event_buf (struct dwc3_event_buffer*) ;

__attribute__((used)) static irqreturn_t dwc3_interrupt(int irq, void *_evt)
{
 struct dwc3_event_buffer *evt = _evt;

 return dwc3_check_event_buf(evt);
}
