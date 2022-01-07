
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {struct device* device; int igate; int name; scalar_t__ reset_required; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (struct device*) ;
 int vfio_add_group_dev (struct device*,int *,struct vfio_platform_device*) ;
 struct iommu_group* vfio_iommu_group_get (struct device*) ;
 int vfio_iommu_group_put (struct iommu_group*,struct device*) ;
 int vfio_platform_acpi_probe (struct vfio_platform_device*,struct device*) ;
 int vfio_platform_get_reset (struct vfio_platform_device*) ;
 int vfio_platform_of_probe (struct vfio_platform_device*,struct device*) ;
 int vfio_platform_ops ;
 int vfio_platform_put_reset (struct vfio_platform_device*) ;

int vfio_platform_probe_common(struct vfio_platform_device *vdev,
          struct device *dev)
{
 struct iommu_group *group;
 int ret;

 if (!vdev)
  return -EINVAL;

 ret = vfio_platform_acpi_probe(vdev, dev);
 if (ret)
  ret = vfio_platform_of_probe(vdev, dev);

 if (ret)
  return ret;

 vdev->device = dev;

 ret = vfio_platform_get_reset(vdev);
 if (ret && vdev->reset_required) {
  dev_err(dev, "No reset function found for device %s\n",
   vdev->name);
  return ret;
 }

 group = vfio_iommu_group_get(dev);
 if (!group) {
  dev_err(dev, "No IOMMU group for device %s\n", vdev->name);
  ret = -EINVAL;
  goto put_reset;
 }

 ret = vfio_add_group_dev(dev, &vfio_platform_ops, vdev);
 if (ret)
  goto put_iommu;

 mutex_init(&vdev->igate);

 pm_runtime_enable(vdev->device);
 return 0;

put_iommu:
 vfio_iommu_group_put(group, dev);
put_reset:
 vfio_platform_put_reset(vdev);
 return ret;
}
