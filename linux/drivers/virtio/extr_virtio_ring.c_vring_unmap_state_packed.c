
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vring_virtqueue {int use_dma_api; } ;
struct vring_desc_extra_packed {int flags; int len; int addr; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int VRING_DESC_F_INDIRECT ;
 int VRING_DESC_F_WRITE ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int vring_dma_dev (struct vring_virtqueue const*) ;

__attribute__((used)) static void vring_unmap_state_packed(const struct vring_virtqueue *vq,
         struct vring_desc_extra_packed *state)
{
 u16 flags;

 if (!vq->use_dma_api)
  return;

 flags = state->flags;

 if (flags & VRING_DESC_F_INDIRECT) {
  dma_unmap_single(vring_dma_dev(vq),
     state->addr, state->len,
     (flags & VRING_DESC_F_WRITE) ?
     DMA_FROM_DEVICE : DMA_TO_DEVICE);
 } else {
  dma_unmap_page(vring_dma_dev(vq),
          state->addr, state->len,
          (flags & VRING_DESC_F_WRITE) ?
          DMA_FROM_DEVICE : DMA_TO_DEVICE);
 }
}
