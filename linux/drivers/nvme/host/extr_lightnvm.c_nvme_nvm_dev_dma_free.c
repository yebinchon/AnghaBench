
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int dma_pool_free (void*,void*,int ) ;

__attribute__((used)) static void nvme_nvm_dev_dma_free(void *pool, void *addr,
       dma_addr_t dma_handler)
{
 dma_pool_free(pool, addr, dma_handler);
}
