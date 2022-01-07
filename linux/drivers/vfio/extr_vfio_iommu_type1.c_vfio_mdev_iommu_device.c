
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 struct device* vfio_mdev_get_iommu_device (struct device*) ;

__attribute__((used)) static int vfio_mdev_iommu_device(struct device *dev, void *data)
{
 struct device **old = data, *new;

 new = vfio_mdev_get_iommu_device(dev);
 if (!new || (*old && *old != new))
  return -EINVAL;

 *old = new;

 return 0;
}
