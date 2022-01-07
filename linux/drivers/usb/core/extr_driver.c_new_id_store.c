
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_driver {int id_table; int dynids; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 struct usb_driver* to_usb_driver (struct device_driver*) ;
 int usb_store_new_id (int *,int ,struct device_driver*,char const*,size_t) ;

__attribute__((used)) static ssize_t new_id_store(struct device_driver *driver,
       const char *buf, size_t count)
{
 struct usb_driver *usb_drv = to_usb_driver(driver);

 return usb_store_new_id(&usb_drv->dynids, usb_drv->id_table, driver, buf, count);
}
