
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int __composite_unbind (struct usb_gadget*,int) ;

__attribute__((used)) static void composite_unbind(struct usb_gadget *gadget)
{
 __composite_unbind(gadget, 1);
}
