
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {int use_dma_api; } ;
typedef int dma_addr_t ;


 int dma_mapping_error (int ,int ) ;
 int vring_dma_dev (struct vring_virtqueue const*) ;

__attribute__((used)) static int vring_mapping_error(const struct vring_virtqueue *vq,
          dma_addr_t addr)
{
 if (!vq->use_dma_api)
  return 0;

 return dma_mapping_error(vring_dma_dev(vq), addr);
}
