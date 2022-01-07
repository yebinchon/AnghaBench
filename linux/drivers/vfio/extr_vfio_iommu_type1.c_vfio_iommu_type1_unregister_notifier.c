
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_iommu {int notifier; } ;
struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

__attribute__((used)) static int vfio_iommu_type1_unregister_notifier(void *iommu_data,
      struct notifier_block *nb)
{
 struct vfio_iommu *iommu = iommu_data;

 return blocking_notifier_chain_unregister(&iommu->notifier, nb);
}
