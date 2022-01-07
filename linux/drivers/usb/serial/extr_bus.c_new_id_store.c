
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_driver {TYPE_2__* usb_driver; int id_table; int dynids; } ;
struct device_driver {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {struct device_driver driver; } ;
struct TYPE_4__ {TYPE_1__ drvwrap; int id_table; int dynids; } ;


 struct usb_serial_driver* to_usb_serial_driver (struct device_driver*) ;
 scalar_t__ usb_store_new_id (int *,int ,struct device_driver*,char const*,size_t) ;

__attribute__((used)) static ssize_t new_id_store(struct device_driver *driver,
       const char *buf, size_t count)
{
 struct usb_serial_driver *usb_drv = to_usb_serial_driver(driver);
 ssize_t retval = usb_store_new_id(&usb_drv->dynids, usb_drv->id_table,
      driver, buf, count);

 if (retval >= 0 && usb_drv->usb_driver != ((void*)0))
  retval = usb_store_new_id(&usb_drv->usb_driver->dynids,
       usb_drv->usb_driver->id_table,
       &usb_drv->usb_driver->drvwrap.driver,
       buf, count);
 return retval;
}
