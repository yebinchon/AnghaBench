
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int dummy; } ;
struct vfio_device_ops {int dummy; } ;
typedef struct vfio_group vfio_device ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct vfio_group*) ;
 int PTR_ERR (struct vfio_group*) ;
 int dev_WARN (struct device*,char*,int ) ;
 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_id (struct iommu_group*) ;
 int iommu_group_put (struct iommu_group*) ;
 struct vfio_group* vfio_create_group (struct iommu_group*) ;
 int vfio_device_put (struct vfio_group*) ;
 struct vfio_group* vfio_group_create_device (struct vfio_group*,struct device*,struct vfio_device_ops const*,void*) ;
 struct vfio_group* vfio_group_get_device (struct vfio_group*,struct device*) ;
 struct vfio_group* vfio_group_get_from_iommu (struct iommu_group*) ;
 int vfio_group_put (struct vfio_group*) ;

int vfio_add_group_dev(struct device *dev,
         const struct vfio_device_ops *ops, void *device_data)
{
 struct iommu_group *iommu_group;
 struct vfio_group *group;
 struct vfio_device *device;

 iommu_group = iommu_group_get(dev);
 if (!iommu_group)
  return -EINVAL;

 group = vfio_group_get_from_iommu(iommu_group);
 if (!group) {
  group = vfio_create_group(iommu_group);
  if (IS_ERR(group)) {
   iommu_group_put(iommu_group);
   return PTR_ERR(group);
  }
 } else {




  iommu_group_put(iommu_group);
 }

 device = vfio_group_get_device(group, dev);
 if (device) {
  dev_WARN(dev, "Device already exists on group %d\n",
    iommu_group_id(iommu_group));
  vfio_device_put(device);
  vfio_group_put(group);
  return -EBUSY;
 }

 device = vfio_group_create_device(group, dev, ops, device_data);
 if (IS_ERR(device)) {
  vfio_group_put(group);
  return PTR_ERR(device);
 }






 vfio_group_put(group);

 return 0;
}
