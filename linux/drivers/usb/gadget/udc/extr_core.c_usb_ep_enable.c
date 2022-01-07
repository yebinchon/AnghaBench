
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {int enabled; int desc; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct usb_ep*,int ) ;} ;


 int EINVAL ;
 int stub1 (struct usb_ep*,int ) ;
 int trace_usb_ep_enable (struct usb_ep*,int) ;
 scalar_t__ usb_endpoint_maxp (int ) ;

int usb_ep_enable(struct usb_ep *ep)
{
 int ret = 0;

 if (ep->enabled)
  goto out;


 if (usb_endpoint_maxp(ep->desc) == 0) {





  ret = -EINVAL;
  goto out;
 }

 ret = ep->ops->enable(ep, ep->desc);
 if (ret)
  goto out;

 ep->enabled = 1;

out:
 trace_usb_ep_enable(ep, ret);

 return ret;
}
