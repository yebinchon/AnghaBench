
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ status; int (* complete ) (struct usb_ep*,struct usb_request*) ;} ;
struct usb_ep {int dummy; } ;


 int USB_LED_EVENT_GADGET ;
 scalar_t__ likely (int) ;
 int stub1 (struct usb_ep*,struct usb_request*) ;
 int trace_usb_gadget_giveback_request (struct usb_ep*,struct usb_request*,int ) ;
 int usb_led_activity (int ) ;

void usb_gadget_giveback_request(struct usb_ep *ep,
  struct usb_request *req)
{
 if (likely(req->status == 0))
  usb_led_activity(USB_LED_EVENT_GADGET);

 trace_usb_gadget_giveback_request(ep, req, 0);

 req->complete(ep, req);
}
