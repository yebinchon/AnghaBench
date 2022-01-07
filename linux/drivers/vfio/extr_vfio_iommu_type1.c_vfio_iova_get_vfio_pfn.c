
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pfn {int ref_count; } ;
struct vfio_dma {int dummy; } ;


 int atomic_inc (int *) ;
 struct vfio_pfn* vfio_find_vpfn (struct vfio_dma*,unsigned long) ;

__attribute__((used)) static struct vfio_pfn *vfio_iova_get_vfio_pfn(struct vfio_dma *dma,
            unsigned long iova)
{
 struct vfio_pfn *vpfn = vfio_find_vpfn(dma, iova);

 if (vpfn)
  atomic_inc(&vpfn->ref_count);
 return vpfn;
}
