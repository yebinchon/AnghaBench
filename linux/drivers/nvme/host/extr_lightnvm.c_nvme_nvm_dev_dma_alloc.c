
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_dev {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* dma_pool_alloc (void*,int ,int *) ;

__attribute__((used)) static void *nvme_nvm_dev_dma_alloc(struct nvm_dev *dev, void *pool,
        gfp_t mem_flags, dma_addr_t *dma_handler)
{
 return dma_pool_alloc(pool, mem_flags, dma_handler);
}
