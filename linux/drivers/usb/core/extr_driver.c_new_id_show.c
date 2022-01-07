
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_driver {int dynids; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 struct usb_driver* to_usb_driver (struct device_driver*) ;
 int usb_show_dynids (int *,char*) ;

__attribute__((used)) static ssize_t new_id_show(struct device_driver *driver, char *buf)
{
 struct usb_driver *usb_drv = to_usb_driver(driver);

 return usb_show_dynids(&usb_drv->dynids, buf);
}
