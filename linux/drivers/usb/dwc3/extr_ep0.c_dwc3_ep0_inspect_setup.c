
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; int wLength; } ;
struct dwc3_event_depevt {int dummy; } ;
struct dwc3 {int three_stage_setup; int ep0_expect_in; int delayed_status; int ep0_next_event; int gadget_driver; scalar_t__ ep0_trb; } ;


 int DWC3_EP0_NRDY_DATA ;
 int DWC3_EP0_NRDY_STATUS ;
 int EINVAL ;
 int USB_DIR_IN ;
 int USB_GADGET_DELAYED_STATUS ;
 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int dwc3_ep0_delegate_req (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_ep0_stall_and_restart (struct dwc3*) ;
 int dwc3_ep0_std_request (struct dwc3*,struct usb_ctrlrequest*) ;
 int le16_to_cpu (int ) ;
 int trace_dwc3_ctrl_req (struct usb_ctrlrequest*) ;

__attribute__((used)) static void dwc3_ep0_inspect_setup(struct dwc3 *dwc,
  const struct dwc3_event_depevt *event)
{
 struct usb_ctrlrequest *ctrl = (void *) dwc->ep0_trb;
 int ret = -EINVAL;
 u32 len;

 if (!dwc->gadget_driver)
  goto out;

 trace_dwc3_ctrl_req(ctrl);

 len = le16_to_cpu(ctrl->wLength);
 if (!len) {
  dwc->three_stage_setup = 0;
  dwc->ep0_expect_in = 0;
  dwc->ep0_next_event = DWC3_EP0_NRDY_STATUS;
 } else {
  dwc->three_stage_setup = 1;
  dwc->ep0_expect_in = !!(ctrl->bRequestType & USB_DIR_IN);
  dwc->ep0_next_event = DWC3_EP0_NRDY_DATA;
 }

 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
  ret = dwc3_ep0_std_request(dwc, ctrl);
 else
  ret = dwc3_ep0_delegate_req(dwc, ctrl);

 if (ret == USB_GADGET_DELAYED_STATUS)
  dwc->delayed_status = 1;

out:
 if (ret < 0)
  dwc3_ep0_stall_and_restart(dwc);
}
