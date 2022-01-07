
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequest; } ;
struct dwc3 {int dummy; } ;
 int dwc3_ep0_delegate_req (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_ep0_handle_feature (struct dwc3*,struct usb_ctrlrequest*,int) ;
 int dwc3_ep0_handle_status (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_ep0_set_address (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_ep0_set_config (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_ep0_set_isoch_delay (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_ep0_set_sel (struct dwc3*,struct usb_ctrlrequest*) ;

__attribute__((used)) static int dwc3_ep0_std_request(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
 int ret;

 switch (ctrl->bRequest) {
 case 133:
  ret = dwc3_ep0_handle_status(dwc, ctrl);
  break;
 case 134:
  ret = dwc3_ep0_handle_feature(dwc, ctrl, 0);
  break;
 case 130:
  ret = dwc3_ep0_handle_feature(dwc, ctrl, 1);
  break;
 case 132:
  ret = dwc3_ep0_set_address(dwc, ctrl);
  break;
 case 131:
  ret = dwc3_ep0_set_config(dwc, ctrl);
  break;
 case 128:
  ret = dwc3_ep0_set_sel(dwc, ctrl);
  break;
 case 129:
  ret = dwc3_ep0_set_isoch_delay(dwc, ctrl);
  break;
 default:
  ret = dwc3_ep0_delegate_req(dwc, ctrl);
  break;
 }

 return ret;
}
