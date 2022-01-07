
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rio_dev {struct device dev; } ;


 int dev_attr_errlog ;
 int dev_err (struct device*,char*) ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static int idtg2_sysfs(struct rio_dev *rdev, bool create)
{
 struct device *dev = &rdev->dev;
 int err = 0;

 if (create) {

  err = device_create_file(dev, &dev_attr_errlog);
  if (err)
   dev_err(dev, "Unable create sysfs errlog file\n");
 } else
  device_remove_file(dev, &dev_attr_errlog);

 return err;
}
