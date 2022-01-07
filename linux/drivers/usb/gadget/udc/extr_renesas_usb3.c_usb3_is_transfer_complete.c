
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int actual; int length; int zero; } ;
struct renesas_usb3_request {struct usb_request req; } ;
struct TYPE_2__ {int maxpacket; } ;
struct renesas_usb3_ep {TYPE_1__ ep; } ;



__attribute__((used)) static bool usb3_is_transfer_complete(struct renesas_usb3_ep *usb3_ep,
          struct renesas_usb3_request *usb3_req)
{
 struct usb_request *req = &usb3_req->req;

 if ((!req->zero && req->actual == req->length) ||
     (req->actual % usb3_ep->ep.maxpacket) || (req->length == 0))
  return 1;
 else
  return 0;
}
