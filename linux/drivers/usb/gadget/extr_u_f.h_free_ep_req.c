
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int * buf; } ;
struct usb_ep {int dummy; } ;


 int WARN_ON (int ) ;
 int kfree (int *) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

__attribute__((used)) static inline void free_ep_req(struct usb_ep *ep, struct usb_request *req)
{
 WARN_ON(req->buf == ((void*)0));
 kfree(req->buf);
 req->buf = ((void*)0);
 usb_ep_free_request(ep, req);
}
