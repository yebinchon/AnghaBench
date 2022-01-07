
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_iommu {int notifier; } ;
struct notifier_block {int dummy; } ;


 int EINVAL ;
 unsigned long VFIO_IOMMU_NOTIFY_DMA_UNMAP ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;

__attribute__((used)) static int vfio_iommu_type1_register_notifier(void *iommu_data,
           unsigned long *events,
           struct notifier_block *nb)
{
 struct vfio_iommu *iommu = iommu_data;


 *events &= ~VFIO_IOMMU_NOTIFY_DMA_UNMAP;


 if (*events)
  return -EINVAL;

 return blocking_notifier_chain_register(&iommu->notifier, nb);
}
