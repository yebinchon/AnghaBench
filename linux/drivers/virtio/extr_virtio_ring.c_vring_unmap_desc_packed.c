
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vring_virtqueue {int use_dma_api; } ;
struct vring_packed_desc {int len; int addr; int flags; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int VRING_DESC_F_INDIRECT ;
 int VRING_DESC_F_WRITE ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int vring_dma_dev (struct vring_virtqueue const*) ;

__attribute__((used)) static void vring_unmap_desc_packed(const struct vring_virtqueue *vq,
       struct vring_packed_desc *desc)
{
 u16 flags;

 if (!vq->use_dma_api)
  return;

 flags = le16_to_cpu(desc->flags);

 if (flags & VRING_DESC_F_INDIRECT) {
  dma_unmap_single(vring_dma_dev(vq),
     le64_to_cpu(desc->addr),
     le32_to_cpu(desc->len),
     (flags & VRING_DESC_F_WRITE) ?
     DMA_FROM_DEVICE : DMA_TO_DEVICE);
 } else {
  dma_unmap_page(vring_dma_dev(vq),
          le64_to_cpu(desc->addr),
          le32_to_cpu(desc->len),
          (flags & VRING_DESC_F_WRITE) ?
          DMA_FROM_DEVICE : DMA_TO_DEVICE);
 }
}
