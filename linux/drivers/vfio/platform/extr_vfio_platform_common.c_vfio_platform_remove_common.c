
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int device; } ;
struct device {int iommu_group; } ;


 int pm_runtime_disable (int ) ;
 struct vfio_platform_device* vfio_del_group_dev (struct device*) ;
 int vfio_iommu_group_put (int ,struct device*) ;
 int vfio_platform_put_reset (struct vfio_platform_device*) ;

struct vfio_platform_device *vfio_platform_remove_common(struct device *dev)
{
 struct vfio_platform_device *vdev;

 vdev = vfio_del_group_dev(dev);

 if (vdev) {
  pm_runtime_disable(vdev->device);
  vfio_platform_put_reset(vdev);
  vfio_iommu_group_put(dev->iommu_group, dev);
 }

 return vdev;
}
