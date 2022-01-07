
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {int use_dma_api; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_map_single (int ,void*,size_t,int) ;
 int virt_to_phys (void*) ;
 int vring_dma_dev (struct vring_virtqueue const*) ;

__attribute__((used)) static dma_addr_t vring_map_single(const struct vring_virtqueue *vq,
       void *cpu_addr, size_t size,
       enum dma_data_direction direction)
{
 if (!vq->use_dma_api)
  return (dma_addr_t)virt_to_phys(cpu_addr);

 return dma_map_single(vring_dma_dev(vq),
         cpu_addr, size, direction);
}
