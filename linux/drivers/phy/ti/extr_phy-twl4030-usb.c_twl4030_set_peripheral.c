
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_otg {int state; struct usb_gadget* gadget; } ;
struct usb_gadget {int dummy; } ;


 int ENODEV ;
 int OTG_STATE_UNDEFINED ;

__attribute__((used)) static int twl4030_set_peripheral(struct usb_otg *otg,
     struct usb_gadget *gadget)
{
 if (!otg)
  return -ENODEV;

 otg->gadget = gadget;
 if (!gadget)
  otg->state = OTG_STATE_UNDEFINED;

 return 0;
}
