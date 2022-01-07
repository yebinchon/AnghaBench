
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrequest {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 int kfree (struct vrequest*) ;
 struct vrequest* to_vrequest (struct usb_request*) ;

__attribute__((used)) static void vep_free_request(struct usb_ep *_ep, struct usb_request *_req)
{
 struct vrequest *req;


 if (!_req)
  return;

 req = to_vrequest(_req);
 kfree(req);
}
