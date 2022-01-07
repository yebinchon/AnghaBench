
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int is_selfpowered; } ;


 int ENODEV ;

__attribute__((used)) static int
net2272_set_selfpowered(struct usb_gadget *_gadget, int value)
{
 if (!_gadget)
  return -ENODEV;

 _gadget->is_selfpowered = (value != 0);

 return 0;
}
