
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_iommu {int dma_avail; } ;
struct vfio_dma {int task; } ;


 int kfree (struct vfio_dma*) ;
 int put_task_struct (int ) ;
 int vfio_unlink_dma (struct vfio_iommu*,struct vfio_dma*) ;
 int vfio_unmap_unpin (struct vfio_iommu*,struct vfio_dma*,int) ;

__attribute__((used)) static void vfio_remove_dma(struct vfio_iommu *iommu, struct vfio_dma *dma)
{
 vfio_unmap_unpin(iommu, dma, 1);
 vfio_unlink_dma(iommu, dma);
 put_task_struct(dma->task);
 kfree(dma);
 iommu->dma_avail++;
}
