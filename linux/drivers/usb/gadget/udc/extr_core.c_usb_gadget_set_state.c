
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int state; int work; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int schedule_work (int *) ;

void usb_gadget_set_state(struct usb_gadget *gadget,
  enum usb_device_state state)
{
 gadget->state = state;
 schedule_work(&gadget->work);
}
