
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;


 int gen_pool_free (struct gen_pool*,unsigned long,size_t) ;
 int memset (void*,int ,size_t) ;

void cio_gp_dma_free(struct gen_pool *gp_dma, void *cpu_addr, size_t size)
{
 if (!cpu_addr)
  return;
 memset(cpu_addr, 0, size);
 gen_pool_free(gp_dma, (unsigned long) cpu_addr, size);
}
