
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_depevt {size_t endpoint_number; } ;
struct dwc3_ep {int dummy; } ;
struct dwc3 {struct dwc3_ep** eps; } ;


 int __dwc3_ep0_do_control_status (struct dwc3*,struct dwc3_ep*) ;

__attribute__((used)) static void dwc3_ep0_do_control_status(struct dwc3 *dwc,
  const struct dwc3_event_depevt *event)
{
 struct dwc3_ep *dep = dwc->eps[event->endpoint_number];

 __dwc3_ep0_do_control_status(dwc, dep);
}
