
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int dma_rx_timeout; int lpuart_dma_rx_use; scalar_t__ dma_rx_chan; } ;


 int DMA_RX_TIMEOUT ;
 int lpuart_start_rx_dma (struct lpuart_port*) ;
 int msecs_to_jiffies (int ) ;
 int rx_dma_timer_init (struct lpuart_port*) ;

__attribute__((used)) static void lpuart_rx_dma_startup(struct lpuart_port *sport)
{
 if (sport->dma_rx_chan && !lpuart_start_rx_dma(sport)) {

  sport->dma_rx_timeout = msecs_to_jiffies(DMA_RX_TIMEOUT);
  if (!sport->dma_rx_timeout)
   sport->dma_rx_timeout = 1;

  sport->lpuart_dma_rx_use = 1;
  rx_dma_timer_init(sport);
 } else {
  sport->lpuart_dma_rx_use = 0;
 }
}
