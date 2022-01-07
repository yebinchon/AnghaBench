
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;


 int usb3_set_halt (int ,int,int) ;
 int usb_ep_to_usb3_ep (struct usb_ep*) ;

__attribute__((used)) static int renesas_usb3_ep_set_halt(struct usb_ep *_ep, int value)
{
 return usb3_set_halt(usb_ep_to_usb3_ep(_ep), !!value, 0);
}
