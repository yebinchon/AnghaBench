
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {struct dasd_devmap* private_data; } ;
struct dasd_devmap {int dummy; } ;
struct dasd_device {TYPE_1__* cdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 int dasd_devmap_lock ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dev_name (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dasd_add_link_to_gendisk(struct gendisk *gdp, struct dasd_device *device)
{
 struct dasd_devmap *devmap;

 devmap = dasd_find_busid(dev_name(&device->cdev->dev));
 if (IS_ERR(devmap))
  return;
 spin_lock(&dasd_devmap_lock);
 gdp->private_data = devmap;
 spin_unlock(&dasd_devmap_lock);
}
