
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;


 int __usbhsg_ep_set_halt_wedge (struct usb_ep*,int,int) ;

__attribute__((used)) static int usbhsg_ep_set_wedge(struct usb_ep *ep)
{
 return __usbhsg_ep_set_halt_wedge(ep, 1, 1);
}
