
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_iommu {int dummy; } ;
struct vfio_dma {unsigned long vaddr; int iommu_mapped; scalar_t__ size; int prot; scalar_t__ iova; } ;
typedef scalar_t__ dma_addr_t ;


 size_t PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 int WARN_ON (int) ;
 size_t rlimit (int ) ;
 int vfio_iommu_map (struct vfio_iommu*,scalar_t__,unsigned long,long,int ) ;
 long vfio_pin_pages_remote (struct vfio_dma*,scalar_t__,size_t,unsigned long*,unsigned long) ;
 int vfio_remove_dma (struct vfio_iommu*,struct vfio_dma*) ;
 int vfio_unpin_pages_remote (struct vfio_dma*,scalar_t__,unsigned long,long,int) ;

__attribute__((used)) static int vfio_pin_map_dma(struct vfio_iommu *iommu, struct vfio_dma *dma,
       size_t map_size)
{
 dma_addr_t iova = dma->iova;
 unsigned long vaddr = dma->vaddr;
 size_t size = map_size;
 long npage;
 unsigned long pfn, limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
 int ret = 0;

 while (size) {

  npage = vfio_pin_pages_remote(dma, vaddr + dma->size,
           size >> PAGE_SHIFT, &pfn, limit);
  if (npage <= 0) {
   WARN_ON(!npage);
   ret = (int)npage;
   break;
  }


  ret = vfio_iommu_map(iommu, iova + dma->size, pfn, npage,
         dma->prot);
  if (ret) {
   vfio_unpin_pages_remote(dma, iova + dma->size, pfn,
      npage, 1);
   break;
  }

  size -= npage << PAGE_SHIFT;
  dma->size += npage << PAGE_SHIFT;
 }

 dma->iommu_mapped = 1;

 if (ret)
  vfio_remove_dma(iommu, dma);

 return ret;
}
