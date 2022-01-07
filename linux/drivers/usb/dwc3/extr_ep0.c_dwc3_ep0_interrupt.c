
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_depevt {int endpoint_event; } ;
struct dwc3 {int dummy; } ;
 int dwc3_ep0_xfer_complete (struct dwc3*,struct dwc3_event_depevt const*) ;
 int dwc3_ep0_xfernotready (struct dwc3*,struct dwc3_event_depevt const*) ;

void dwc3_ep0_interrupt(struct dwc3 *dwc,
  const struct dwc3_event_depevt *event)
{
 switch (event->endpoint_event) {
 case 130:
  dwc3_ep0_xfer_complete(dwc, event);
  break;

 case 128:
  dwc3_ep0_xfernotready(dwc, event);
  break;

 case 129:
 case 132:
 case 131:
 case 133:
  break;
 }
}
