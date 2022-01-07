
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pfn {unsigned long pfn; } ;
struct TYPE_2__ {int head; } ;
struct vfio_iommu {int lock; TYPE_1__ notifier; int v2; } ;
struct vfio_dma {int prot; unsigned long vaddr; unsigned long iova; } ;
typedef unsigned long dma_addr_t ;


 int EACCES ;
 int EINVAL ;
 int EPERM ;
 int IS_IOMMU_CAP_DOMAIN_IN_CONTAINER (struct vfio_iommu*) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_add_to_pfn_list (struct vfio_dma*,unsigned long,unsigned long) ;
 struct vfio_dma* vfio_find_dma (struct vfio_iommu*,unsigned long,int ) ;
 struct vfio_pfn* vfio_iova_get_vfio_pfn (struct vfio_dma*,unsigned long) ;
 int vfio_pin_page_external (struct vfio_dma*,unsigned long,unsigned long*,int) ;
 int vfio_unpin_page_external (struct vfio_dma*,unsigned long,int) ;

__attribute__((used)) static int vfio_iommu_type1_pin_pages(void *iommu_data,
          unsigned long *user_pfn,
          int npage, int prot,
          unsigned long *phys_pfn)
{
 struct vfio_iommu *iommu = iommu_data;
 int i, j, ret;
 unsigned long remote_vaddr;
 struct vfio_dma *dma;
 bool do_accounting;

 if (!iommu || !user_pfn || !phys_pfn)
  return -EINVAL;


 if (!iommu->v2)
  return -EACCES;

 mutex_lock(&iommu->lock);


 if (!iommu->notifier.head) {
  ret = -EINVAL;
  goto pin_done;
 }






 do_accounting = !IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(iommu);

 for (i = 0; i < npage; i++) {
  dma_addr_t iova;
  struct vfio_pfn *vpfn;

  iova = user_pfn[i] << PAGE_SHIFT;
  dma = vfio_find_dma(iommu, iova, PAGE_SIZE);
  if (!dma) {
   ret = -EINVAL;
   goto pin_unwind;
  }

  if ((dma->prot & prot) != prot) {
   ret = -EPERM;
   goto pin_unwind;
  }

  vpfn = vfio_iova_get_vfio_pfn(dma, iova);
  if (vpfn) {
   phys_pfn[i] = vpfn->pfn;
   continue;
  }

  remote_vaddr = dma->vaddr + iova - dma->iova;
  ret = vfio_pin_page_external(dma, remote_vaddr, &phys_pfn[i],
          do_accounting);
  if (ret)
   goto pin_unwind;

  ret = vfio_add_to_pfn_list(dma, iova, phys_pfn[i]);
  if (ret) {
   vfio_unpin_page_external(dma, iova, do_accounting);
   goto pin_unwind;
  }
 }

 ret = i;
 goto pin_done;

pin_unwind:
 phys_pfn[i] = 0;
 for (j = 0; j < i; j++) {
  dma_addr_t iova;

  iova = user_pfn[j] << PAGE_SHIFT;
  dma = vfio_find_dma(iommu, iova, PAGE_SIZE);
  vfio_unpin_page_external(dma, iova, do_accounting);
  phys_pfn[j] = 0;
 }
pin_done:
 mutex_unlock(&iommu->lock);
 return ret;
}
