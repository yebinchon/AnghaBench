
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_io_store {int max; struct dpaa2_io_store* alloced_addr; int paddr; int dev; } ;
struct dpaa2_dq {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int kfree (struct dpaa2_io_store*) ;

void dpaa2_io_store_destroy(struct dpaa2_io_store *s)
{
 dma_unmap_single(s->dev, s->paddr, sizeof(struct dpaa2_dq) * s->max,
    DMA_FROM_DEVICE);
 kfree(s->alloced_addr);
 kfree(s);
}
