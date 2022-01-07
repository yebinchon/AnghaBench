
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_halt ) (struct usb_ep*,int) ;} ;


 int stub1 (struct usb_ep*,int) ;
 int trace_usb_ep_set_halt (struct usb_ep*,int) ;

int usb_ep_set_halt(struct usb_ep *ep)
{
 int ret;

 ret = ep->ops->set_halt(ep, 1);
 trace_usb_ep_set_halt(ep, ret);

 return ret;
}
