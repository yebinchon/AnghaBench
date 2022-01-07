
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_depevt {size_t endpoint_number; } ;
struct dwc3_ep {scalar_t__ resource_index; int flags; } ;
struct dwc3 {int setup_packet_pending; int ep0state; struct dwc3_ep** eps; } ;


 int DWC3_EP_TRANSFER_STARTED ;



 int WARN (int,char*,int) ;
 int dwc3_ep0_complete_data (struct dwc3*,struct dwc3_event_depevt const*) ;
 int dwc3_ep0_complete_status (struct dwc3*,struct dwc3_event_depevt const*) ;
 int dwc3_ep0_inspect_setup (struct dwc3*,struct dwc3_event_depevt const*) ;

__attribute__((used)) static void dwc3_ep0_xfer_complete(struct dwc3 *dwc,
   const struct dwc3_event_depevt *event)
{
 struct dwc3_ep *dep = dwc->eps[event->endpoint_number];

 dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
 dep->resource_index = 0;
 dwc->setup_packet_pending = 0;

 switch (dwc->ep0state) {
 case 129:
  dwc3_ep0_inspect_setup(dwc, event);
  break;

 case 130:
  dwc3_ep0_complete_data(dwc, event);
  break;

 case 128:
  dwc3_ep0_complete_status(dwc, event);
  break;
 default:
  WARN(1, "UNKNOWN ep0state %d\n", dwc->ep0state);
 }
}
