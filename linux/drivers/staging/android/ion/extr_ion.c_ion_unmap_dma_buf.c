
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct dma_buf_attachment {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_sg (int ,int ,int ,int) ;

__attribute__((used)) static void ion_unmap_dma_buf(struct dma_buf_attachment *attachment,
         struct sg_table *table,
         enum dma_data_direction direction)
{
 dma_unmap_sg(attachment->dev, table->sgl, table->nents, direction);
}
