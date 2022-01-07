
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CIO_DMA_GFP ;
 int PAGE_SIZE ;
 scalar_t__ dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int gen_pool_add_virt (struct gen_pool*,unsigned long,int ,size_t,int) ;
 unsigned long gen_pool_alloc (struct gen_pool*,size_t) ;
 size_t round_up (size_t,int ) ;

void *cio_gp_dma_zalloc(struct gen_pool *gp_dma, struct device *dma_dev,
   size_t size)
{
 dma_addr_t dma_addr;
 unsigned long addr;
 size_t chunk_size;

 if (!gp_dma)
  return ((void*)0);
 addr = gen_pool_alloc(gp_dma, size);
 while (!addr) {
  chunk_size = round_up(size, PAGE_SIZE);
  addr = (unsigned long) dma_alloc_coherent(dma_dev,
      chunk_size, &dma_addr, CIO_DMA_GFP);
  if (!addr)
   return ((void*)0);
  gen_pool_add_virt(gp_dma, addr, dma_addr, chunk_size, -1);
  addr = gen_pool_alloc(gp_dma, size);
 }
 return (void *) addr;
}
