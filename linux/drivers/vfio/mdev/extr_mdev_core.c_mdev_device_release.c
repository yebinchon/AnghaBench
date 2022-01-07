
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;
struct device {int dummy; } ;


 int mdev_device_free (struct mdev_device*) ;
 struct mdev_device* to_mdev_device (struct device*) ;

__attribute__((used)) static void mdev_device_release(struct device *dev)
{
 struct mdev_device *mdev = to_mdev_device(dev);

 mdev_device_free(mdev);
}
