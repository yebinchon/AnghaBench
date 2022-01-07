
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_phy {TYPE_2__* dev; } ;
struct module {int dummy; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {struct module* owner; } ;


 int module_put (struct module*) ;
 int put_device (TYPE_2__*) ;

void usb_put_phy(struct usb_phy *x)
{
 if (x) {
  struct module *owner = x->dev->driver->owner;

  put_device(x->dev);
  module_put(owner);
 }
}
