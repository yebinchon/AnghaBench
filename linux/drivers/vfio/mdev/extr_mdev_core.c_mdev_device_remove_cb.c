
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ dev_is_mdev (struct device*) ;
 int mdev_device_remove_common (struct mdev_device*) ;
 struct mdev_device* to_mdev_device (struct device*) ;

__attribute__((used)) static int mdev_device_remove_cb(struct device *dev, void *data)
{
 if (dev_is_mdev(dev)) {
  struct mdev_device *mdev;

  mdev = to_mdev_device(dev);
  mdev_device_remove_common(mdev);
 }
 return 0;
}
