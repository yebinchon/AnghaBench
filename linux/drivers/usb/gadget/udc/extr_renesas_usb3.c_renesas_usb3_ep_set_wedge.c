
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct renesas_usb3_ep {int wedge; } ;


 int usb3_set_halt (struct renesas_usb3_ep*,int,int) ;
 struct renesas_usb3_ep* usb_ep_to_usb3_ep (struct usb_ep*) ;

__attribute__((used)) static int renesas_usb3_ep_set_wedge(struct usb_ep *_ep)
{
 struct renesas_usb3_ep *usb3_ep = usb_ep_to_usb3_ep(_ep);

 usb3_ep->wedge = 1;
 return usb3_set_halt(usb3_ep, 1, 0);
}
