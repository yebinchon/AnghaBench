
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {struct device* iommu_device; } ;
struct device {int dummy; } ;


 struct mdev_device* to_mdev_device (struct device*) ;

int mdev_set_iommu_device(struct device *dev, struct device *iommu_device)
{
 struct mdev_device *mdev = to_mdev_device(dev);

 mdev->iommu_device = iommu_device;

 return 0;
}
