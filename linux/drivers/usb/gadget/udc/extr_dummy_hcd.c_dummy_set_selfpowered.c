
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int is_selfpowered; } ;
struct dummy {int devstatus; } ;
struct TYPE_2__ {struct dummy* dum; } ;


 int USB_DEVICE_SELF_POWERED ;
 TYPE_1__* gadget_to_dummy_hcd (struct usb_gadget*) ;

__attribute__((used)) static int dummy_set_selfpowered(struct usb_gadget *_gadget, int value)
{
 struct dummy *dum;

 _gadget->is_selfpowered = (value != 0);
 dum = gadget_to_dummy_hcd(_gadget)->dum;
 if (value)
  dum->devstatus |= (1 << USB_DEVICE_SELF_POWERED);
 else
  dum->devstatus &= ~(1 << USB_DEVICE_SELF_POWERED);
 return 0;
}
