
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct musb_ep {int wedged; } ;


 int EINVAL ;
 struct musb_ep* to_musb_ep (struct usb_ep*) ;
 int usb_ep_set_halt (struct usb_ep*) ;

__attribute__((used)) static int musb_gadget_set_wedge(struct usb_ep *ep)
{
 struct musb_ep *musb_ep = to_musb_ep(ep);

 if (!ep)
  return -EINVAL;

 musb_ep->wedged = 1;

 return usb_ep_set_halt(ep);
}
