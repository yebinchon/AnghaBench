
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int dummy; } ;


 int dma_pool_destroy (struct dma_pool*) ;

__attribute__((used)) static void nvme_nvm_destroy_dma_pool(void *pool)
{
 struct dma_pool *dma_pool = pool;

 dma_pool_destroy(dma_pool);
}
