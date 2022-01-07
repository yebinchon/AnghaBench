
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cio_dma_pool ;
 int cio_gp_dma_free (int ,void*,size_t) ;

void cio_dma_free(void *cpu_addr, size_t size)
{
 cio_gp_dma_free(cio_dma_pool, cpu_addr, size);
}
