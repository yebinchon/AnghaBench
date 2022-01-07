
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {int dummy; } ;
struct dwc3 {struct dwc3_event_buffer* ev_buf; } ;


 int dwc3_free_one_event_buffer (struct dwc3*,struct dwc3_event_buffer*) ;

__attribute__((used)) static void dwc3_free_event_buffers(struct dwc3 *dwc)
{
 struct dwc3_event_buffer *evt;

 evt = dwc->ev_buf;
 if (evt)
  dwc3_free_one_event_buffer(dwc, evt);
}
