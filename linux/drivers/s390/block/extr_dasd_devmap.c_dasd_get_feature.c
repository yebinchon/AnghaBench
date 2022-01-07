
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_devmap {int features; } ;
struct ccw_device {int dev; } ;


 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 int PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dev_name (int *) ;

int
dasd_get_feature(struct ccw_device *cdev, int feature)
{
 struct dasd_devmap *devmap;

 devmap = dasd_find_busid(dev_name(&cdev->dev));
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);

 return ((devmap->features & feature) != 0);
}
