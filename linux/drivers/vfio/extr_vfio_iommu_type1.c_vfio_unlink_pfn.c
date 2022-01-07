
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pfn {int node; } ;
struct vfio_dma {int pfn_list; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void vfio_unlink_pfn(struct vfio_dma *dma, struct vfio_pfn *old)
{
 rb_erase(&old->node, &dma->pfn_list);
}
