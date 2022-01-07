
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; } ;
struct dwc3 {int dummy; } ;


 int EINVAL ;



 int USB_RECIP_MASK ;
 int dwc3_ep0_handle_device (struct dwc3*,struct usb_ctrlrequest*,int) ;
 int dwc3_ep0_handle_endpoint (struct dwc3*,struct usb_ctrlrequest*,int) ;
 int dwc3_ep0_handle_intf (struct dwc3*,struct usb_ctrlrequest*,int) ;

__attribute__((used)) static int dwc3_ep0_handle_feature(struct dwc3 *dwc,
  struct usb_ctrlrequest *ctrl, int set)
{
 u32 recip;
 int ret;

 recip = ctrl->bRequestType & USB_RECIP_MASK;

 switch (recip) {
 case 130:
  ret = dwc3_ep0_handle_device(dwc, ctrl, set);
  break;
 case 128:
  ret = dwc3_ep0_handle_intf(dwc, ctrl, set);
  break;
 case 129:
  ret = dwc3_ep0_handle_endpoint(dwc, ctrl, set);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
