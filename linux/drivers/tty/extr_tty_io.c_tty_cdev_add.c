
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_driver {TYPE_1__** cdevs; int owner; } ;
typedef int dev_t ;
struct TYPE_3__ {int kobj; int owner; int * ops; } ;


 int ENOMEM ;
 int cdev_add (TYPE_1__*,int ,unsigned int) ;
 TYPE_1__* cdev_alloc () ;
 int kobject_put (int *) ;
 int tty_fops ;

__attribute__((used)) static int tty_cdev_add(struct tty_driver *driver, dev_t dev,
  unsigned int index, unsigned int count)
{
 int err;


 driver->cdevs[index] = cdev_alloc();
 if (!driver->cdevs[index])
  return -ENOMEM;
 driver->cdevs[index]->ops = &tty_fops;
 driver->cdevs[index]->owner = driver->owner;
 err = cdev_add(driver->cdevs[index], dev, count);
 if (err)
  kobject_put(&driver->cdevs[index]->kobj);
 return err;
}
