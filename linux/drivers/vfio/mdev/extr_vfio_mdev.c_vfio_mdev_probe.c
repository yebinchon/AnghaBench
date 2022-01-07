
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;
struct device {int dummy; } ;


 struct mdev_device* to_mdev_device (struct device*) ;
 int vfio_add_group_dev (struct device*,int *,struct mdev_device*) ;
 int vfio_mdev_dev_ops ;

__attribute__((used)) static int vfio_mdev_probe(struct device *dev)
{
 struct mdev_device *mdev = to_mdev_device(dev);

 return vfio_add_group_dev(dev, &vfio_mdev_dev_ops, mdev);
}
