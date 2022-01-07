
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {size_t length; int buf; } ;
struct usb_ep {int desc; } ;


 int GFP_ATOMIC ;
 int kmalloc (size_t,int ) ;
 scalar_t__ usb_endpoint_dir_out (int ) ;
 size_t usb_ep_align (struct usb_ep*,size_t) ;
 struct usb_request* usb_ep_alloc_request (struct usb_ep*,int ) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

struct usb_request *alloc_ep_req(struct usb_ep *ep, size_t len)
{
 struct usb_request *req;

 req = usb_ep_alloc_request(ep, GFP_ATOMIC);
 if (req) {
  req->length = usb_endpoint_dir_out(ep->desc) ?
   usb_ep_align(ep, len) : len;
  req->buf = kmalloc(req->length, GFP_ATOMIC);
  if (!req->buf) {
   usb_ep_free_request(ep, req);
   req = ((void*)0);
  }
 }
 return req;
}
