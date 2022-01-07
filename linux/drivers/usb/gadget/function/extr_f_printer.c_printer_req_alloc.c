
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {unsigned int length; int * buf; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 int * kmalloc (unsigned int,int ) ;
 struct usb_request* usb_ep_alloc_request (struct usb_ep*,int ) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

__attribute__((used)) static struct usb_request *
printer_req_alloc(struct usb_ep *ep, unsigned len, gfp_t gfp_flags)
{
 struct usb_request *req;

 req = usb_ep_alloc_request(ep, gfp_flags);

 if (req != ((void*)0)) {
  req->length = len;
  req->buf = kmalloc(len, gfp_flags);
  if (req->buf == ((void*)0)) {
   usb_ep_free_request(ep, req);
   return ((void*)0);
  }
 }

 return req;
}
