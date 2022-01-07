
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; int bRequest; } ;
struct renesas_usb3 {int dummy; } ;
 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int usb3_set_p0_con_stall (struct renesas_usb3*) ;
 int usb3_std_req_feature (struct renesas_usb3*,struct usb_ctrlrequest*,int) ;
 int usb3_std_req_get_status (struct renesas_usb3*,struct usb_ctrlrequest*) ;
 int usb3_std_req_set_address (struct renesas_usb3*,struct usb_ctrlrequest*) ;
 int usb3_std_req_set_configuration (struct renesas_usb3*,struct usb_ctrlrequest*) ;
 int usb3_std_req_set_sel (struct renesas_usb3*,struct usb_ctrlrequest*) ;

__attribute__((used)) static bool usb3_handle_standard_request(struct renesas_usb3 *usb3,
      struct usb_ctrlrequest *ctrl)
{
 bool ret = 0;
 bool stall = 0;

 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
  switch (ctrl->bRequest) {
  case 132:
   stall = usb3_std_req_set_address(usb3, ctrl);
   ret = 1;
   break;
  case 133:
   stall = usb3_std_req_get_status(usb3, ctrl);
   ret = 1;
   break;
  case 134:
   stall = usb3_std_req_feature(usb3, ctrl, 0);
   ret = 1;
   break;
  case 130:
   stall = usb3_std_req_feature(usb3, ctrl, 1);
   ret = 1;
   break;
  case 128:
   stall = usb3_std_req_set_sel(usb3, ctrl);
   ret = 1;
   break;
  case 129:

   stall = 1;
   ret = 1;
   break;
  case 131:
   usb3_std_req_set_configuration(usb3, ctrl);
   break;
  default:
   break;
  }
 }

 if (stall)
  usb3_set_p0_con_stall(usb3);

 return ret;
}
