
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {int driver_list; int description; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;
 int table_lock ;
 int usb_serial_bus_deregister (struct usb_serial_driver*) ;

__attribute__((used)) static void usb_serial_deregister(struct usb_serial_driver *device)
{
 pr_info("USB Serial deregistering driver %s\n", device->description);

 mutex_lock(&table_lock);
 list_del(&device->driver_list);
 mutex_unlock(&table_lock);

 usb_serial_bus_deregister(device);
}
