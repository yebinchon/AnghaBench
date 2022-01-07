
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct isp1760_request {int dummy; } ;


 int kfree (struct isp1760_request*) ;
 struct isp1760_request* req_to_udc_req (struct usb_request*) ;

__attribute__((used)) static void isp1760_ep_free_request(struct usb_ep *ep, struct usb_request *_req)
{
 struct isp1760_request *req = req_to_udc_req(_req);

 kfree(req);
}
