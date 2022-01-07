
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {int enabled; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct usb_ep*) ;} ;


 int stub1 (struct usb_ep*) ;
 int trace_usb_ep_disable (struct usb_ep*,int) ;

int usb_ep_disable(struct usb_ep *ep)
{
 int ret = 0;

 if (!ep->enabled)
  goto out;

 ret = ep->ops->disable(ep);
 if (ret)
  goto out;

 ep->enabled = 0;

out:
 trace_usb_ep_disable(ep, ret);

 return ret;
}
