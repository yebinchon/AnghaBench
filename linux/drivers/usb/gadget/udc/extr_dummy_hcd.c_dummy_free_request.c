
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dummy_request {int queue; } ;


 int WARN_ON (int) ;
 int kfree (struct dummy_request*) ;
 int list_empty (int *) ;
 struct dummy_request* usb_request_to_dummy_request (struct usb_request*) ;

__attribute__((used)) static void dummy_free_request(struct usb_ep *_ep, struct usb_request *_req)
{
 struct dummy_request *req;

 if (!_ep || !_req) {
  WARN_ON(1);
  return;
 }

 req = usb_request_to_dummy_request(_req);
 WARN_ON(!list_empty(&req->queue));
 kfree(req);
}
