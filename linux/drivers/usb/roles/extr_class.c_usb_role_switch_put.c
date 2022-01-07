
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; } ;
struct usb_role_switch {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int IS_ERR_OR_NULL (struct usb_role_switch*) ;
 int module_put (int ) ;
 int put_device (TYPE_3__*) ;

void usb_role_switch_put(struct usb_role_switch *sw)
{
 if (!IS_ERR_OR_NULL(sw)) {
  put_device(&sw->dev);
  module_put(sw->dev.parent->driver->owner);
 }
}
