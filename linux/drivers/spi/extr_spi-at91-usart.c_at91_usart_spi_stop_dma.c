
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {scalar_t__ dma_tx; scalar_t__ dma_rx; } ;


 int dmaengine_terminate_all (scalar_t__) ;

__attribute__((used)) static void at91_usart_spi_stop_dma(struct spi_controller *ctlr)
{
 if (ctlr->dma_rx)
  dmaengine_terminate_all(ctlr->dma_rx);
 if (ctlr->dma_tx)
  dmaengine_terminate_all(ctlr->dma_tx);
}
