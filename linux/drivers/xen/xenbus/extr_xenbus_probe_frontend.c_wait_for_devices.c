
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct xenbus_driver {struct device_driver driver; } ;
struct TYPE_2__ {int bus; } ;


 int bus_for_each_dev (int *,int *,struct device_driver*,int ) ;
 scalar_t__ exists_essential_connecting_device (struct device_driver*) ;
 scalar_t__ exists_non_essential_connecting_device (struct device_driver*) ;
 unsigned long jiffies ;
 int print_device_status ;
 int printk (char*) ;
 int ready_to_wait_for_devices ;
 scalar_t__ wait_loop (unsigned long,int,unsigned int*) ;
 int xen_domain () ;
 TYPE_1__ xenbus_frontend ;

__attribute__((used)) static void wait_for_devices(struct xenbus_driver *xendrv)
{
 unsigned long start = jiffies;
 struct device_driver *drv = xendrv ? &xendrv->driver : ((void*)0);
 unsigned int seconds_waited = 0;

 if (!ready_to_wait_for_devices || !xen_domain())
  return;

 while (exists_non_essential_connecting_device(drv))
  if (wait_loop(start, 30, &seconds_waited))
   break;


 while (exists_essential_connecting_device(drv))
  if (wait_loop(start, 270, &seconds_waited))
   break;

 if (seconds_waited)
  printk("\n");

 bus_for_each_dev(&xenbus_frontend.bus, ((void*)0), drv,
    print_device_status);
}
