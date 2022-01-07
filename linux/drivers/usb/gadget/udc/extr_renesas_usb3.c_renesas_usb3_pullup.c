
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct renesas_usb3 {int softconnect; } ;


 struct renesas_usb3* gadget_to_renesas_usb3 (struct usb_gadget*) ;

__attribute__((used)) static int renesas_usb3_pullup(struct usb_gadget *gadget, int is_on)
{
 struct renesas_usb3 *usb3 = gadget_to_renesas_usb3(gadget);

 usb3->softconnect = !!is_on;

 return 0;
}
