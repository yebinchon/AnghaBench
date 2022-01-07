
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cio_dma_pool ;
 int cio_get_dma_css_dev () ;
 void* cio_gp_dma_zalloc (int ,int ,size_t) ;

void *cio_dma_zalloc(size_t size)
{
 return cio_gp_dma_zalloc(cio_dma_pool, cio_get_dma_css_dev(), size);
}
