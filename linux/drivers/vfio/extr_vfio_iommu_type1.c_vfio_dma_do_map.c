
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vfio_iommu_type1_dma_map {size_t iova; unsigned long vaddr; size_t size; int flags; } ;
struct vfio_iommu {int lock; int dma_avail; } ;
struct vfio_dma {size_t iova; unsigned long vaddr; int prot; size_t size; int pfn_list; int lock_cap; int task; } ;
typedef size_t dma_addr_t ;
struct TYPE_2__ {int group_leader; } ;


 int CAP_IPC_LOCK ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int IS_IOMMU_CAP_DOMAIN_IN_CONTAINER (struct vfio_iommu*) ;
 int PAGE_MASK ;
 int RB_ROOT ;
 int VFIO_DMA_MAP_FLAG_READ ;
 int VFIO_DMA_MAP_FLAG_WRITE ;
 int WARN_ON (int) ;
 int __ffs (int ) ;
 int capable (int ) ;
 TYPE_1__* current ;
 int get_task_struct (int ) ;
 struct vfio_dma* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ vfio_find_dma (struct vfio_iommu*,size_t,size_t) ;
 int vfio_iommu_iova_dma_valid (struct vfio_iommu*,size_t,size_t) ;
 int vfio_link_dma (struct vfio_iommu*,struct vfio_dma*) ;
 int vfio_pgsize_bitmap (struct vfio_iommu*) ;
 int vfio_pin_map_dma (struct vfio_iommu*,struct vfio_dma*,size_t) ;

__attribute__((used)) static int vfio_dma_do_map(struct vfio_iommu *iommu,
      struct vfio_iommu_type1_dma_map *map)
{
 dma_addr_t iova = map->iova;
 unsigned long vaddr = map->vaddr;
 size_t size = map->size;
 int ret = 0, prot = 0;
 uint64_t mask;
 struct vfio_dma *dma;


 if (map->size != size || map->vaddr != vaddr || map->iova != iova)
  return -EINVAL;

 mask = ((uint64_t)1 << __ffs(vfio_pgsize_bitmap(iommu))) - 1;

 WARN_ON(mask & PAGE_MASK);


 if (map->flags & VFIO_DMA_MAP_FLAG_WRITE)
  prot |= IOMMU_WRITE;
 if (map->flags & VFIO_DMA_MAP_FLAG_READ)
  prot |= IOMMU_READ;

 if (!prot || !size || (size | iova | vaddr) & mask)
  return -EINVAL;


 if (iova + size - 1 < iova || vaddr + size - 1 < vaddr)
  return -EINVAL;

 mutex_lock(&iommu->lock);

 if (vfio_find_dma(iommu, iova, size)) {
  ret = -EEXIST;
  goto out_unlock;
 }

 if (!iommu->dma_avail) {
  ret = -ENOSPC;
  goto out_unlock;
 }

 if (!vfio_iommu_iova_dma_valid(iommu, iova, iova + size - 1)) {
  ret = -EINVAL;
  goto out_unlock;
 }

 dma = kzalloc(sizeof(*dma), GFP_KERNEL);
 if (!dma) {
  ret = -ENOMEM;
  goto out_unlock;
 }

 iommu->dma_avail--;
 dma->iova = iova;
 dma->vaddr = vaddr;
 dma->prot = prot;
 get_task_struct(current->group_leader);
 dma->task = current->group_leader;
 dma->lock_cap = capable(CAP_IPC_LOCK);

 dma->pfn_list = RB_ROOT;


 vfio_link_dma(iommu, dma);


 if (!IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(iommu))
  dma->size = size;
 else
  ret = vfio_pin_map_dma(iommu, dma, size);

out_unlock:
 mutex_unlock(&iommu->lock);
 return ret;
}
