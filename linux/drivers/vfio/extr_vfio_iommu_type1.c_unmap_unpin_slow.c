
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_domain {int domain; } ;
struct vfio_dma {int dummy; } ;
typedef size_t phys_addr_t ;
typedef size_t dma_addr_t ;


 size_t PAGE_SHIFT ;
 int cond_resched () ;
 size_t iommu_unmap (int ,size_t,size_t) ;
 scalar_t__ vfio_unpin_pages_remote (struct vfio_dma*,size_t,size_t,size_t,int) ;

__attribute__((used)) static size_t unmap_unpin_slow(struct vfio_domain *domain,
          struct vfio_dma *dma, dma_addr_t *iova,
          size_t len, phys_addr_t phys,
          long *unlocked)
{
 size_t unmapped = iommu_unmap(domain->domain, *iova, len);

 if (unmapped) {
  *unlocked += vfio_unpin_pages_remote(dma, *iova,
           phys >> PAGE_SHIFT,
           unmapped >> PAGE_SHIFT,
           0);
  *iova += unmapped;
  cond_resched();
 }
 return unmapped;
}
