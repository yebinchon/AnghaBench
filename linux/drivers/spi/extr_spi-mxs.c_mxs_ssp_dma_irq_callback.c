
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_spi {int c; } ;


 int complete (int *) ;

__attribute__((used)) static void mxs_ssp_dma_irq_callback(void *param)
{
 struct mxs_spi *spi = param;

 complete(&spi->c);
}
