
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dev; } ;
struct TYPE_2__ {int speed; } ;
struct dummy {TYPE_1__ gadget; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;


 int dummy_udc_update_ep0 (struct dummy*) ;
 struct dummy* gadget_dev_to_dummy (int *) ;

__attribute__((used)) static void dummy_udc_set_speed(struct usb_gadget *_gadget,
  enum usb_device_speed speed)
{
 struct dummy *dum;

 dum = gadget_dev_to_dummy(&_gadget->dev);
 dum->gadget.speed = speed;
 dummy_udc_update_ep0(dum);
}
