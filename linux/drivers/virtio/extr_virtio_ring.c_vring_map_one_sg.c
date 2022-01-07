
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {int use_dma_api; } ;
struct scatterlist {int length; int offset; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_map_page (int ,int ,int ,int ,int) ;
 int sg_page (struct scatterlist*) ;
 int sg_phys (struct scatterlist*) ;
 int vring_dma_dev (struct vring_virtqueue const*) ;

__attribute__((used)) static dma_addr_t vring_map_one_sg(const struct vring_virtqueue *vq,
       struct scatterlist *sg,
       enum dma_data_direction direction)
{
 if (!vq->use_dma_api)
  return (dma_addr_t)sg_phys(sg);






 return dma_map_page(vring_dma_dev(vq),
       sg_page(sg), sg->offset, sg->length,
       direction);
}
