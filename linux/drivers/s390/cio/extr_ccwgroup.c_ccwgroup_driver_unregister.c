
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ccwgroup_driver {int driver; } ;
struct ccwgroup_device {int dummy; } ;


 int ccwgroup_ungroup (struct ccwgroup_device*) ;
 struct device* driver_find_next_device (int *,int *) ;
 int driver_unregister (int *) ;
 int put_device (struct device*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

void ccwgroup_driver_unregister(struct ccwgroup_driver *cdriver)
{
 struct device *dev;


 while ((dev = driver_find_next_device(&cdriver->driver, ((void*)0)))) {
  struct ccwgroup_device *gdev = to_ccwgroupdev(dev);

  ccwgroup_ungroup(gdev);
  put_device(dev);
 }
 driver_unregister(&cdriver->driver);
}
