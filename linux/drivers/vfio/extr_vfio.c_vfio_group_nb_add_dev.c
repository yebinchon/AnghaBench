
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int iommu_group; int container_users; } ;
struct vfio_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (struct vfio_device*) ;
 int atomic_read (int *) ;
 int dev_WARN (struct device*,char*,int ) ;
 int iommu_group_id (int ) ;
 int vfio_device_put (struct vfio_device*) ;
 struct vfio_device* vfio_group_get_device (struct vfio_group*,struct device*) ;

__attribute__((used)) static int vfio_group_nb_add_dev(struct vfio_group *group, struct device *dev)
{
 struct vfio_device *device;


 device = vfio_group_get_device(group, dev);
 if (WARN_ON_ONCE(device)) {
  vfio_device_put(device);
  return 0;
 }


 if (!atomic_read(&group->container_users))
  return 0;


 dev_WARN(dev, "Device added to live group %d!\n",
   iommu_group_id(group->iommu_group));

 return 0;
}
