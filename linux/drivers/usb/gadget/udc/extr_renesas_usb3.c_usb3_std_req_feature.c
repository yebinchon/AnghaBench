
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; } ;
struct renesas_usb3 {int dummy; } ;





 int USB_RECIP_MASK ;
 int usb3_set_p0_con_for_no_data (struct renesas_usb3*) ;
 int usb3_std_req_feature_device (struct renesas_usb3*,struct usb_ctrlrequest*,int) ;
 int usb3_std_req_feature_endpoint (struct renesas_usb3*,struct usb_ctrlrequest*,int) ;

__attribute__((used)) static bool usb3_std_req_feature(struct renesas_usb3 *usb3,
     struct usb_ctrlrequest *ctrl, bool set)
{
 bool stall = 0;

 switch (ctrl->bRequestType & USB_RECIP_MASK) {
 case 130:
  stall = usb3_std_req_feature_device(usb3, ctrl, set);
  break;
 case 128:
  break;
 case 129:
  stall = usb3_std_req_feature_endpoint(usb3, ctrl, set);
  break;
 default:
  stall = 1;
  break;
 }

 if (!stall)
  usb3_set_p0_con_for_no_data(usb3);

 return stall;
}
