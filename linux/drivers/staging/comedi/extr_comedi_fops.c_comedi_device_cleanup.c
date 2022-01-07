
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct comedi_device {int mutex; scalar_t__ use_count; TYPE_1__* driver; scalar_t__ attached; } ;
struct TYPE_2__ {struct module* module; } ;


 int comedi_device_detach (struct comedi_device*) ;
 int module_put (struct module*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void comedi_device_cleanup(struct comedi_device *dev)
{
 struct module *driver_module = ((void*)0);

 if (!dev)
  return;
 mutex_lock(&dev->mutex);
 if (dev->attached)
  driver_module = dev->driver->module;
 comedi_device_detach(dev);
 if (driver_module && dev->use_count)
  module_put(driver_module);
 mutex_unlock(&dev->mutex);
}
