
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_spi {scalar_t__ zeropage; int tx_sgt; scalar_t__ dma_tx; int rx_sgt; scalar_t__ dma_rx; } ;


 int dma_release_channel (scalar_t__) ;
 int free_page (unsigned long) ;
 int sg_free_table (int *) ;

__attribute__((used)) static void ep93xx_spi_release_dma(struct ep93xx_spi *espi)
{
 if (espi->dma_rx) {
  dma_release_channel(espi->dma_rx);
  sg_free_table(&espi->rx_sgt);
 }
 if (espi->dma_tx) {
  dma_release_channel(espi->dma_tx);
  sg_free_table(&espi->tx_sgt);
 }

 if (espi->zeropage)
  free_page((unsigned long)espi->zeropage);
}
