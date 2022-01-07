
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_role_switch {int dev; } ;


 int IS_ERR_OR_NULL (struct usb_role_switch*) ;
 int device_unregister (int *) ;

void usb_role_switch_unregister(struct usb_role_switch *sw)
{
 if (!IS_ERR_OR_NULL(sw))
  device_unregister(&sw->dev);
}
