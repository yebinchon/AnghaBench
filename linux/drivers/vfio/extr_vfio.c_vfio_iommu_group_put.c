
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int * iommu_group_get_iommudata (struct iommu_group*) ;
 int iommu_group_put (struct iommu_group*) ;
 int iommu_group_remove_device (struct device*) ;
 int noiommu ;

void vfio_iommu_group_put(struct iommu_group *group, struct device *dev)
{





 iommu_group_put(group);
}
