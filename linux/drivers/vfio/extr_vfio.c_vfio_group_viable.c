
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int iommu_group; } ;


 scalar_t__ iommu_group_for_each_dev (int ,struct vfio_group*,int ) ;
 int vfio_dev_viable ;

__attribute__((used)) static bool vfio_group_viable(struct vfio_group *group)
{
 return (iommu_group_for_each_dev(group->iommu_group,
      group, vfio_dev_viable) == 0);
}
