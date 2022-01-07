
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CIO_DMA_GFP ;
 int PAGE_SIZE ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int gen_pool_add_virt (struct gen_pool*,unsigned long,int ,int ,int) ;
 struct gen_pool* gen_pool_create (int,int) ;

struct gen_pool *cio_gp_dma_create(struct device *dma_dev, int nr_pages)
{
 struct gen_pool *gp_dma;
 void *cpu_addr;
 dma_addr_t dma_addr;
 int i;

 gp_dma = gen_pool_create(3, -1);
 if (!gp_dma)
  return ((void*)0);
 for (i = 0; i < nr_pages; ++i) {
  cpu_addr = dma_alloc_coherent(dma_dev, PAGE_SIZE, &dma_addr,
           CIO_DMA_GFP);
  if (!cpu_addr)
   return gp_dma;
  gen_pool_add_virt(gp_dma, (unsigned long) cpu_addr,
      dma_addr, PAGE_SIZE, -1);
 }
 return gp_dma;
}
