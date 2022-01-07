
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * bus; } ;
struct TYPE_3__ {int list; int lock; } ;
struct usb_serial_driver {TYPE_2__ driver; TYPE_1__ dynids; } ;


 int INIT_LIST_HEAD (int *) ;
 int driver_register (TYPE_2__*) ;
 int spin_lock_init (int *) ;
 int usb_serial_bus_type ;

int usb_serial_bus_register(struct usb_serial_driver *driver)
{
 int retval;

 driver->driver.bus = &usb_serial_bus_type;
 spin_lock_init(&driver->dynids.lock);
 INIT_LIST_HEAD(&driver->dynids.list);

 retval = driver_register(&driver->driver);

 return retval;
}
