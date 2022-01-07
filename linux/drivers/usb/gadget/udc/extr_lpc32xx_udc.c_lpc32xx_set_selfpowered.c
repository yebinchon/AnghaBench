
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int is_selfpowered; } ;



__attribute__((used)) static int lpc32xx_set_selfpowered(struct usb_gadget *gadget, int is_on)
{
 gadget->is_selfpowered = (is_on != 0);

 return 0;
}
