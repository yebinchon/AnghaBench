
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_serdev_device_release ;
 int devres_add (struct device*,struct serdev_device**) ;
 struct serdev_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct serdev_device**) ;
 int serdev_device_open (struct serdev_device*) ;

int devm_serdev_device_open(struct device *dev, struct serdev_device *serdev)
{
 struct serdev_device **dr;
 int ret;

 dr = devres_alloc(devm_serdev_device_release, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 ret = serdev_device_open(serdev);
 if (ret) {
  devres_free(dr);
  return ret;
 }

 *dr = serdev;
 devres_add(dev, dr);

 return 0;
}
