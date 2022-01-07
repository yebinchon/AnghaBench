
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int is_selfpowered; } ;



__attribute__((used)) static int
musb_gadget_set_self_powered(struct usb_gadget *gadget, int is_selfpowered)
{
 gadget->is_selfpowered = !!is_selfpowered;
 return 0;
}
