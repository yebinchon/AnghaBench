
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int flags; int ** cdevs; int minor_start; int major; } ;


 scalar_t__ MKDEV (int ,int ) ;
 int TTY_DRIVER_DYNAMIC_ALLOC ;
 int cdev_del (int *) ;
 int device_destroy (int ,scalar_t__) ;
 int tty_class ;

void tty_unregister_device(struct tty_driver *driver, unsigned index)
{
 device_destroy(tty_class,
  MKDEV(driver->major, driver->minor_start) + index);
 if (!(driver->flags & TTY_DRIVER_DYNAMIC_ALLOC)) {
  cdev_del(driver->cdevs[index]);
  driver->cdevs[index] = ((void*)0);
 }
}
