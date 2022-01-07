
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_devmap {int features; TYPE_1__* device; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int features; } ;


 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 int PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_devmap_from_cdev (struct ccw_device*) ;
 int dasd_devmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
dasd_set_feature(struct ccw_device *cdev, int feature, int flag)
{
 struct dasd_devmap *devmap;

 devmap = dasd_devmap_from_cdev(cdev);
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);

 spin_lock(&dasd_devmap_lock);
 if (flag)
  devmap->features |= feature;
 else
  devmap->features &= ~feature;
 if (devmap->device)
  devmap->device->features = devmap->features;
 spin_unlock(&dasd_devmap_lock);
 return 0;
}
