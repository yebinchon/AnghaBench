
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;



__attribute__((used)) static void tee_shm_op_unmap_dma_buf(struct dma_buf_attachment *attach,
         struct sg_table *table,
         enum dma_data_direction dir)
{
}
