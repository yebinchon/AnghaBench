
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pfn {int dummy; } ;
struct vfio_dma {int dummy; } ;
typedef int dma_addr_t ;


 struct vfio_pfn* vfio_find_vpfn (struct vfio_dma*,int ) ;
 int vfio_iova_put_vfio_pfn (struct vfio_dma*,struct vfio_pfn*) ;
 int vfio_lock_acct (struct vfio_dma*,int,int) ;

__attribute__((used)) static int vfio_unpin_page_external(struct vfio_dma *dma, dma_addr_t iova,
        bool do_accounting)
{
 int unlocked;
 struct vfio_pfn *vpfn = vfio_find_vpfn(dma, iova);

 if (!vpfn)
  return 0;

 unlocked = vfio_iova_put_vfio_pfn(dma, vpfn);

 if (do_accounting)
  vfio_lock_acct(dma, -unlocked, 1);

 return unlocked;
}
