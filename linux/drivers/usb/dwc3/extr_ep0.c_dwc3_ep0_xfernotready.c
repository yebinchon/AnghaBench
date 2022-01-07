
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_depevt {int status; int endpoint_number; } ;
struct dwc3_ep {int pending_list; } ;
struct dwc3 {int ep0_expect_in; int delayed_status; int gadget; struct dwc3_ep** eps; int ep0state; int ep0_next_event; int dev; } ;




 int DWC3_EP0_NRDY_STATUS ;
 int EP0_STATUS_PHASE ;
 int USB_STATE_CONFIGURED ;
 int WARN_ON_ONCE (int) ;
 int dev_err (int ,char*) ;
 int dwc3_ep0_do_control_status (struct dwc3*,struct dwc3_event_depevt const*) ;
 int dwc3_ep0_end_control_data (struct dwc3*,struct dwc3_ep*) ;
 int dwc3_ep0_stall_and_restart (struct dwc3*) ;
 int list_empty (int *) ;
 int usb_gadget_set_state (int *,int ) ;

__attribute__((used)) static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
  const struct dwc3_event_depevt *event)
{
 switch (event->status) {
 case 129:
  if (dwc->ep0_expect_in != event->endpoint_number) {
   struct dwc3_ep *dep = dwc->eps[dwc->ep0_expect_in];

   dev_err(dwc->dev, "unexpected direction for Data Phase\n");
   dwc3_ep0_end_control_data(dwc, dep);
   dwc3_ep0_stall_and_restart(dwc);
   return;
  }

  break;

 case 128:
  if (dwc->ep0_next_event != DWC3_EP0_NRDY_STATUS)
   return;

  dwc->ep0state = EP0_STATUS_PHASE;

  if (dwc->delayed_status) {
   struct dwc3_ep *dep = dwc->eps[0];

   WARN_ON_ONCE(event->endpoint_number != 1);





   if (!list_empty(&dep->pending_list)) {
    dwc->delayed_status = 0;
    usb_gadget_set_state(&dwc->gadget,
           USB_STATE_CONFIGURED);
    dwc3_ep0_do_control_status(dwc, event);
   }

   return;
  }

  dwc3_ep0_do_control_status(dwc, event);
 }
}
