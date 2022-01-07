
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int buf; } ;
struct usb_ep {int dummy; } ;


 int kfree (int ) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

__attribute__((used)) static void
printer_req_free(struct usb_ep *ep, struct usb_request *req)
{
 if (ep != ((void*)0) && req != ((void*)0)) {
  kfree(req->buf);
  usb_ep_free_request(ep, req);
 }
}
