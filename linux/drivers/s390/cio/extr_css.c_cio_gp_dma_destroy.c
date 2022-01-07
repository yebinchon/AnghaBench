
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
struct device {int dummy; } ;


 int __gp_dma_free_dma ;
 int gen_pool_destroy (struct gen_pool*) ;
 int gen_pool_for_each_chunk (struct gen_pool*,int ,struct device*) ;

void cio_gp_dma_destroy(struct gen_pool *gp_dma, struct device *dma_dev)
{
 if (!gp_dma)
  return;

 gen_pool_for_each_chunk(gp_dma, __gp_dma_free_dma, dma_dev);
 gen_pool_destroy(gp_dma);
}
