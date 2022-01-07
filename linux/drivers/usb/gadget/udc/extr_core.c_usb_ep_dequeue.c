
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_ep {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dequeue ) (struct usb_ep*,struct usb_request*) ;} ;


 int stub1 (struct usb_ep*,struct usb_request*) ;
 int trace_usb_ep_dequeue (struct usb_ep*,struct usb_request*,int) ;

int usb_ep_dequeue(struct usb_ep *ep, struct usb_request *req)
{
 int ret;

 ret = ep->ops->dequeue(ep, req);
 trace_usb_ep_dequeue(ep, req, ret);

 return ret;
}
