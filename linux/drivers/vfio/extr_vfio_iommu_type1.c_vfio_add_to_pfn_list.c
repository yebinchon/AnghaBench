
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pfn {unsigned long pfn; int ref_count; int iova; } ;
struct vfio_dma {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 struct vfio_pfn* kzalloc (int,int ) ;
 int vfio_link_pfn (struct vfio_dma*,struct vfio_pfn*) ;

__attribute__((used)) static int vfio_add_to_pfn_list(struct vfio_dma *dma, dma_addr_t iova,
    unsigned long pfn)
{
 struct vfio_pfn *vpfn;

 vpfn = kzalloc(sizeof(*vpfn), GFP_KERNEL);
 if (!vpfn)
  return -ENOMEM;

 vpfn->iova = iova;
 vpfn->pfn = pfn;
 atomic_set(&vpfn->ref_count, 1);
 vfio_link_pfn(dma, vpfn);
 return 0;
}
