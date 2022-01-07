
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_ep {TYPE_1__* ops; scalar_t__ address; int enabled; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* queue ) (struct usb_ep*,struct usb_request*,int ) ;} ;


 int ESHUTDOWN ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int stub1 (struct usb_ep*,struct usb_request*,int ) ;
 int trace_usb_ep_queue (struct usb_ep*,struct usb_request*,int) ;

int usb_ep_queue(struct usb_ep *ep,
          struct usb_request *req, gfp_t gfp_flags)
{
 int ret = 0;

 if (WARN_ON_ONCE(!ep->enabled && ep->address)) {
  ret = -ESHUTDOWN;
  goto out;
 }

 ret = ep->ops->queue(ep, req, gfp_flags);

out:
 trace_usb_ep_queue(ep, req, ret);

 return ret;
}
