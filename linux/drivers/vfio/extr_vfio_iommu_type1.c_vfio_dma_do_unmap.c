
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct vfio_iommu_type1_dma_unmap {int iova; int size; } ;
struct vfio_iommu {int lock; int notifier; scalar_t__ v2; } ;
struct vfio_dma {scalar_t__ iova; scalar_t__ size; int pfn_list; TYPE_1__* task; } ;
struct TYPE_4__ {scalar_t__ mm; } ;
struct TYPE_3__ {scalar_t__ mm; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int PAGE_MASK ;
 int RB_EMPTY_ROOT (int *) ;
 int SIZE_MAX ;
 int VFIO_IOMMU_NOTIFY_DMA_UNMAP ;
 int WARN_ON (int) ;
 int __ffs (int ) ;
 int blocking_notifier_call_chain (int *,int ,struct vfio_iommu_type1_dma_unmap*) ;
 TYPE_2__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vfio_dma* vfio_find_dma (struct vfio_iommu*,int,int) ;
 int vfio_pgsize_bitmap (struct vfio_iommu*) ;
 int vfio_remove_dma (struct vfio_iommu*,struct vfio_dma*) ;

__attribute__((used)) static int vfio_dma_do_unmap(struct vfio_iommu *iommu,
        struct vfio_iommu_type1_dma_unmap *unmap)
{
 uint64_t mask;
 struct vfio_dma *dma, *dma_last = ((void*)0);
 size_t unmapped = 0;
 int ret = 0, retries = 0;

 mask = ((uint64_t)1 << __ffs(vfio_pgsize_bitmap(iommu))) - 1;

 if (unmap->iova & mask)
  return -EINVAL;
 if (!unmap->size || unmap->size & mask)
  return -EINVAL;
 if (unmap->iova + unmap->size - 1 < unmap->iova ||
     unmap->size > SIZE_MAX)
  return -EINVAL;

 WARN_ON(mask & PAGE_MASK);
again:
 mutex_lock(&iommu->lock);
 if (iommu->v2) {
  dma = vfio_find_dma(iommu, unmap->iova, 1);
  if (dma && dma->iova != unmap->iova) {
   ret = -EINVAL;
   goto unlock;
  }
  dma = vfio_find_dma(iommu, unmap->iova + unmap->size - 1, 0);
  if (dma && dma->iova + dma->size != unmap->iova + unmap->size) {
   ret = -EINVAL;
   goto unlock;
  }
 }

 while ((dma = vfio_find_dma(iommu, unmap->iova, unmap->size))) {
  if (!iommu->v2 && unmap->iova > dma->iova)
   break;




  if (dma->task->mm != current->mm)
   break;

  if (!RB_EMPTY_ROOT(&dma->pfn_list)) {
   struct vfio_iommu_type1_dma_unmap nb_unmap;

   if (dma_last == dma) {
    BUG_ON(++retries > 10);
   } else {
    dma_last = dma;
    retries = 0;
   }

   nb_unmap.iova = dma->iova;
   nb_unmap.size = dma->size;







   mutex_unlock(&iommu->lock);
   blocking_notifier_call_chain(&iommu->notifier,
          VFIO_IOMMU_NOTIFY_DMA_UNMAP,
          &nb_unmap);
   goto again;
  }
  unmapped += dma->size;
  vfio_remove_dma(iommu, dma);
 }

unlock:
 mutex_unlock(&iommu->lock);


 unmap->size = unmapped;

 return ret;
}
