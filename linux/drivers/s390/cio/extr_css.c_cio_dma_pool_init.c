
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int cio_dma_pool ;
 int cio_get_dma_css_dev () ;
 int cio_gp_dma_create (int ,int) ;

__attribute__((used)) static int cio_dma_pool_init(void)
{

 cio_dma_pool = cio_gp_dma_create(cio_get_dma_css_dev(), 1);
 if (!cio_dma_pool)
  return -ENOMEM;
 return 0;
}
