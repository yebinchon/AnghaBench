
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int vdev; } ;
struct vring_virtqueue {TYPE_1__ vq; int use_dma_api; } ;
struct vring_desc {int len; int addr; int flags; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int VRING_DESC_F_INDIRECT ;
 int VRING_DESC_F_WRITE ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int virtio16_to_cpu (int ,int ) ;
 int virtio32_to_cpu (int ,int ) ;
 int virtio64_to_cpu (int ,int ) ;
 int vring_dma_dev (struct vring_virtqueue const*) ;

__attribute__((used)) static void vring_unmap_one_split(const struct vring_virtqueue *vq,
      struct vring_desc *desc)
{
 u16 flags;

 if (!vq->use_dma_api)
  return;

 flags = virtio16_to_cpu(vq->vq.vdev, desc->flags);

 if (flags & VRING_DESC_F_INDIRECT) {
  dma_unmap_single(vring_dma_dev(vq),
     virtio64_to_cpu(vq->vq.vdev, desc->addr),
     virtio32_to_cpu(vq->vq.vdev, desc->len),
     (flags & VRING_DESC_F_WRITE) ?
     DMA_FROM_DEVICE : DMA_TO_DEVICE);
 } else {
  dma_unmap_page(vring_dma_dev(vq),
          virtio64_to_cpu(vq->vq.vdev, desc->addr),
          virtio32_to_cpu(vq->vq.vdev, desc->len),
          (flags & VRING_DESC_F_WRITE) ?
          DMA_FROM_DEVICE : DMA_TO_DEVICE);
 }
}
