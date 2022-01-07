
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int actual; } ;
struct bcm63xx_udc {struct usb_request* ep0_request; scalar_t__ ep0_req_completed; } ;



__attribute__((used)) static int bcm63xx_ep0_read_complete(struct bcm63xx_udc *udc)
{
 struct usb_request *req = udc->ep0_request;

 udc->ep0_req_completed = 0;
 udc->ep0_request = ((void*)0);

 return req->actual;
}
