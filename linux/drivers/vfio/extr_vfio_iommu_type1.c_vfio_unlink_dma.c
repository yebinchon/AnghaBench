
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_iommu {int dma_list; } ;
struct vfio_dma {int node; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void vfio_unlink_dma(struct vfio_iommu *iommu, struct vfio_dma *old)
{
 rb_erase(&old->node, &iommu->dma_list);
}
