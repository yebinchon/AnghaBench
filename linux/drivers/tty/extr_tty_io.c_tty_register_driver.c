
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int num; int flags; int tty_drivers; int name; int minor_start; scalar_t__ major; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct device*) ;
 scalar_t__ MAJOR (int ) ;
 int MINOR (int ) ;
 int MKDEV (scalar_t__,int ) ;
 int PTR_ERR (struct device*) ;
 int TTY_DRIVER_DYNAMIC_ALLOC ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_INSTALLED ;
 int alloc_chrdev_region (int *,int ,int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proc_tty_register_driver (struct tty_driver*) ;
 int register_chrdev_region (int ,int,int ) ;
 int tty_cdev_add (struct tty_driver*,int ,int ,int) ;
 int tty_drivers ;
 int tty_mutex ;
 struct device* tty_register_device (struct tty_driver*,int,int *) ;
 int tty_unregister_device (struct tty_driver*,int) ;
 int unregister_chrdev_region (int ,int) ;

int tty_register_driver(struct tty_driver *driver)
{
 int error;
 int i;
 dev_t dev;
 struct device *d;

 if (!driver->major) {
  error = alloc_chrdev_region(&dev, driver->minor_start,
      driver->num, driver->name);
  if (!error) {
   driver->major = MAJOR(dev);
   driver->minor_start = MINOR(dev);
  }
 } else {
  dev = MKDEV(driver->major, driver->minor_start);
  error = register_chrdev_region(dev, driver->num, driver->name);
 }
 if (error < 0)
  goto err;

 if (driver->flags & TTY_DRIVER_DYNAMIC_ALLOC) {
  error = tty_cdev_add(driver, dev, 0, driver->num);
  if (error)
   goto err_unreg_char;
 }

 mutex_lock(&tty_mutex);
 list_add(&driver->tty_drivers, &tty_drivers);
 mutex_unlock(&tty_mutex);

 if (!(driver->flags & TTY_DRIVER_DYNAMIC_DEV)) {
  for (i = 0; i < driver->num; i++) {
   d = tty_register_device(driver, i, ((void*)0));
   if (IS_ERR(d)) {
    error = PTR_ERR(d);
    goto err_unreg_devs;
   }
  }
 }
 proc_tty_register_driver(driver);
 driver->flags |= TTY_DRIVER_INSTALLED;
 return 0;

err_unreg_devs:
 for (i--; i >= 0; i--)
  tty_unregister_device(driver, i);

 mutex_lock(&tty_mutex);
 list_del(&driver->tty_drivers);
 mutex_unlock(&tty_mutex);

err_unreg_char:
 unregister_chrdev_region(dev, driver->num);
err:
 return error;
}
