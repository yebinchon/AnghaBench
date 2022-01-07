
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int dummy; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 struct vfio_group* vfio_group_get_from_iommu (struct iommu_group*) ;

__attribute__((used)) static struct vfio_group *vfio_group_get_from_dev(struct device *dev)
{
 struct iommu_group *iommu_group;
 struct vfio_group *group;

 iommu_group = iommu_group_get(dev);
 if (!iommu_group)
  return ((void*)0);

 group = vfio_group_get_from_iommu(iommu_group);
 iommu_group_put(iommu_group);

 return group;
}
