
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wValue; int wIndex; } ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int started; } ;
struct renesas_usb3 {int dummy; } ;


 int USB_ENDPOINT_HALT ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int le16_to_cpu (int ) ;
 struct renesas_usb3_ep* usb3_get_ep (struct renesas_usb3*,int) ;
 struct renesas_usb3_request* usb3_get_request (struct renesas_usb3_ep*) ;
 int usb3_set_halt (struct renesas_usb3_ep*,int,int) ;
 int usb3_start_pipen (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;

__attribute__((used)) static bool usb3_std_req_feature_endpoint(struct renesas_usb3 *usb3,
       struct usb_ctrlrequest *ctrl,
       bool set)
{
 int num = le16_to_cpu(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
 struct renesas_usb3_ep *usb3_ep;
 struct renesas_usb3_request *usb3_req;

 if (le16_to_cpu(ctrl->wValue) != USB_ENDPOINT_HALT)
  return 1;

 usb3_ep = usb3_get_ep(usb3, num);
 usb3_set_halt(usb3_ep, set, 1);


 if (!set) {
  usb3_ep->started = 0;
  usb3_req = usb3_get_request(usb3_ep);
  if (usb3_req)
   usb3_start_pipen(usb3_ep, usb3_req);
 }

 return 0;
}
