
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int iommu_group; scalar_t__ mdev_group; } ;
struct vfio_domain {int domain; } ;


 int iommu_detach_group (int ,int ) ;
 int iommu_group_for_each_dev (int ,int ,int ) ;
 int vfio_mdev_detach_domain ;

__attribute__((used)) static void vfio_iommu_detach_group(struct vfio_domain *domain,
        struct vfio_group *group)
{
 if (group->mdev_group)
  iommu_group_for_each_dev(group->iommu_group, domain->domain,
      vfio_mdev_detach_domain);
 else
  iommu_detach_group(domain->domain, group->iommu_group);
}
