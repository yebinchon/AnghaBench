
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct usbhsg_request {TYPE_1__ pkt; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 int kfree (int ) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;
 struct usbhsg_request* usbhsg_req_to_ureq (struct usb_request*) ;

__attribute__((used)) static void __usbhsg_recip_send_complete(struct usb_ep *ep,
      struct usb_request *req)
{
 struct usbhsg_request *ureq = usbhsg_req_to_ureq(req);


 kfree(ureq->pkt.buf);
 usb_ep_free_request(ep, req);
}
