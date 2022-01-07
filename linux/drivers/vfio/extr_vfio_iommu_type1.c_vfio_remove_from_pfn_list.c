
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pfn {int dummy; } ;
struct vfio_dma {int dummy; } ;


 int kfree (struct vfio_pfn*) ;
 int vfio_unlink_pfn (struct vfio_dma*,struct vfio_pfn*) ;

__attribute__((used)) static void vfio_remove_from_pfn_list(struct vfio_dma *dma,
          struct vfio_pfn *vpfn)
{
 vfio_unlink_pfn(dma, vpfn);
 kfree(vpfn);
}
