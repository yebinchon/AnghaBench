
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int iommu_group; } ;


 int iommu_group_id (int ) ;

int vfio_external_user_iommu_id(struct vfio_group *group)
{
 return iommu_group_id(group->iommu_group);
}
