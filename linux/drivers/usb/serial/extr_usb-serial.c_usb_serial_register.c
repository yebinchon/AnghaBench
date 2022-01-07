
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct usb_serial_driver {scalar_t__ description; int driver_list; int usb_driver; TYPE_1__ driver; } ;


 int EINVAL ;
 int ENODEV ;
 int WARN (int,char*,scalar_t__) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int,scalar_t__) ;
 int pr_info (char*,scalar_t__) ;
 int table_lock ;
 scalar_t__ usb_disabled () ;
 int usb_serial_bus_register (struct usb_serial_driver*) ;
 int usb_serial_driver_list ;
 int usb_serial_operations_init (struct usb_serial_driver*) ;

__attribute__((used)) static int usb_serial_register(struct usb_serial_driver *driver)
{
 int retval;

 if (usb_disabled())
  return -ENODEV;

 if (!driver->description)
  driver->description = driver->driver.name;
 if (!driver->usb_driver) {
  WARN(1, "Serial driver %s has no usb_driver\n",
    driver->description);
  return -EINVAL;
 }

 usb_serial_operations_init(driver);


 mutex_lock(&table_lock);
 list_add(&driver->driver_list, &usb_serial_driver_list);

 retval = usb_serial_bus_register(driver);
 if (retval) {
  pr_err("problem %d when registering driver %s\n", retval, driver->description);
  list_del(&driver->driver_list);
 } else {
  pr_info("USB Serial support registered for %s\n", driver->description);
 }
 mutex_unlock(&table_lock);
 return retval;
}
