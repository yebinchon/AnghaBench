
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_dma {int prot; } ;
typedef int dma_addr_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ put_pfn (int ,int ) ;
 scalar_t__ vfio_find_vpfn (struct vfio_dma*,int ) ;
 int vfio_lock_acct (struct vfio_dma*,long,int) ;

__attribute__((used)) static long vfio_unpin_pages_remote(struct vfio_dma *dma, dma_addr_t iova,
        unsigned long pfn, long npage,
        bool do_accounting)
{
 long unlocked = 0, locked = 0;
 long i;

 for (i = 0; i < npage; i++, iova += PAGE_SIZE) {
  if (put_pfn(pfn++, dma->prot)) {
   unlocked++;
   if (vfio_find_vpfn(dma, iova))
    locked++;
  }
 }

 if (do_accounting)
  vfio_lock_acct(dma, locked - unlocked, 1);

 return unlocked;
}
