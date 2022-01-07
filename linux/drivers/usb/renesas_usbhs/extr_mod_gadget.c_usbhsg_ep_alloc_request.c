
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usbhsg_request {struct usb_request req; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 struct usbhsg_request* kzalloc (int,int ) ;
 int usbhs_pkt_init (int ) ;
 int usbhsg_ureq_to_pkt (struct usbhsg_request*) ;

__attribute__((used)) static struct usb_request *usbhsg_ep_alloc_request(struct usb_ep *ep,
         gfp_t gfp_flags)
{
 struct usbhsg_request *ureq;

 ureq = kzalloc(sizeof *ureq, gfp_flags);
 if (!ureq)
  return ((void*)0);

 usbhs_pkt_init(usbhsg_ureq_to_pkt(ureq));

 return &ureq->req;
}
