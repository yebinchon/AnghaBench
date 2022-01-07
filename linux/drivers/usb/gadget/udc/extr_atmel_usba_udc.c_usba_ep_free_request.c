
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_request {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 int DBG (int ,char*,struct usb_ep*,struct usb_request*) ;
 int DBG_GADGET ;
 int kfree (struct usba_request*) ;
 struct usba_request* to_usba_req (struct usb_request*) ;

__attribute__((used)) static void
usba_ep_free_request(struct usb_ep *_ep, struct usb_request *_req)
{
 struct usba_request *req = to_usba_req(_req);

 DBG(DBG_GADGET, "ep_free_request: %p, %p\n", _ep, _req);

 kfree(req);
}
