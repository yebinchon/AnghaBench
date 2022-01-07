
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_depevt {int parameters; } ;
struct dwc3_ep {int frame_number; } ;



__attribute__((used)) static void dwc3_gadget_endpoint_frame_from_event(struct dwc3_ep *dep,
  const struct dwc3_event_depevt *event)
{
 dep->frame_number = event->parameters;
}
