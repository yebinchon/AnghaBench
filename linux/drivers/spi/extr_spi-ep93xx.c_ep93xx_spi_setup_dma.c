
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int direction; void* port; } ;
struct ep93xx_spi {void* zeropage; int * dma_rx; void* dma_tx; TYPE_1__ dma_tx_data; TYPE_1__ dma_rx_data; } ;
typedef int dma_cap_mask_t ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 int ENODEV ;
 int ENOMEM ;
 void* EP93XX_DMA_SSP ;
 int GFP_KERNEL ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (int *) ;
 void* dma_request_channel (int ,int ,TYPE_1__*) ;
 int ep93xx_spi_dma_filter ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int ep93xx_spi_setup_dma(struct ep93xx_spi *espi)
{
 dma_cap_mask_t mask;
 int ret;

 espi->zeropage = (void *)get_zeroed_page(GFP_KERNEL);
 if (!espi->zeropage)
  return -ENOMEM;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);

 espi->dma_rx_data.port = EP93XX_DMA_SSP;
 espi->dma_rx_data.direction = DMA_DEV_TO_MEM;
 espi->dma_rx_data.name = "ep93xx-spi-rx";

 espi->dma_rx = dma_request_channel(mask, ep93xx_spi_dma_filter,
        &espi->dma_rx_data);
 if (!espi->dma_rx) {
  ret = -ENODEV;
  goto fail_free_page;
 }

 espi->dma_tx_data.port = EP93XX_DMA_SSP;
 espi->dma_tx_data.direction = DMA_MEM_TO_DEV;
 espi->dma_tx_data.name = "ep93xx-spi-tx";

 espi->dma_tx = dma_request_channel(mask, ep93xx_spi_dma_filter,
        &espi->dma_tx_data);
 if (!espi->dma_tx) {
  ret = -ENODEV;
  goto fail_release_rx;
 }

 return 0;

fail_release_rx:
 dma_release_channel(espi->dma_rx);
 espi->dma_rx = ((void*)0);
fail_free_page:
 free_page((unsigned long)espi->zeropage);

 return ret;
}
