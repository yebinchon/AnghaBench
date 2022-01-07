
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {int dma_rx_completion; } ;


 int complete (int *) ;

__attribute__((used)) static void spi_imx_dma_rx_callback(void *cookie)
{
 struct spi_imx_data *spi_imx = (struct spi_imx_data *)cookie;

 complete(&spi_imx->dma_rx_completion);
}
