
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct xusb_req {struct usb_request usb_req; int queue; struct xusb_ep* ep; } ;
struct xusb_ep {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct xusb_req* kzalloc (int,int ) ;
 struct xusb_ep* to_xusb_ep (struct usb_ep*) ;

__attribute__((used)) static struct usb_request *xudc_ep_alloc_request(struct usb_ep *_ep,
       gfp_t gfp_flags)
{
 struct xusb_ep *ep = to_xusb_ep(_ep);
 struct xusb_req *req;

 req = kzalloc(sizeof(*req), gfp_flags);
 if (!req)
  return ((void*)0);

 req->ep = ep;
 INIT_LIST_HEAD(&req->queue);
 return &req->usb_req;
}
