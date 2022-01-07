
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int is_selfpowered; } ;



__attribute__((used)) static int renesas_usb3_set_selfpowered(struct usb_gadget *gadget, int is_self)
{
 gadget->is_selfpowered = !!is_self;

 return 0;
}
