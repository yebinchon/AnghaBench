
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct bcm63xx_udc {struct usb_request* ep0_request; scalar_t__ ep0_req_completed; int gadget; struct usb_request* ep0_reply; } ;


 int ESHUTDOWN ;
 int bcm63xx_ep0_complete (struct bcm63xx_udc*,struct usb_request*,int ) ;
 int usb_gadget_unmap_request (int *,struct usb_request*,int) ;

__attribute__((used)) static void bcm63xx_ep0_nuke_reply(struct bcm63xx_udc *udc, int is_tx)
{
 struct usb_request *req = udc->ep0_reply;

 udc->ep0_reply = ((void*)0);
 usb_gadget_unmap_request(&udc->gadget, req, is_tx);
 if (udc->ep0_request == req) {
  udc->ep0_req_completed = 0;
  udc->ep0_request = ((void*)0);
 }
 bcm63xx_ep0_complete(udc, req, -ESHUTDOWN);
}
