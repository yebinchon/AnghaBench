
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct maple_driver {int function; } ;
struct TYPE_2__ {int function; } ;
struct maple_device {TYPE_1__ devinfo; } ;
struct device_driver {int dummy; } ;


 int cpu_to_be32 (int ) ;
 struct maple_driver* to_maple_driver (struct device_driver*) ;

__attribute__((used)) static int maple_check_matching_driver(struct device_driver *driver,
     void *devptr)
{
 struct maple_driver *maple_drv;
 struct maple_device *mdev;

 mdev = devptr;
 maple_drv = to_maple_driver(driver);
 if (mdev->devinfo.function & cpu_to_be32(maple_drv->function))
  return 1;
 return 0;
}
