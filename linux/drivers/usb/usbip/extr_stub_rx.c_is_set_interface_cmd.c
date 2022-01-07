
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {scalar_t__ bRequest; scalar_t__ bRequestType; } ;
struct urb {scalar_t__ setup_packet; } ;


 scalar_t__ USB_RECIP_INTERFACE ;
 scalar_t__ USB_REQ_SET_INTERFACE ;

__attribute__((used)) static int is_set_interface_cmd(struct urb *urb)
{
 struct usb_ctrlrequest *req;

 req = (struct usb_ctrlrequest *) urb->setup_packet;

 return (req->bRequest == USB_REQ_SET_INTERFACE) &&
  (req->bRequestType == USB_RECIP_INTERFACE);
}
