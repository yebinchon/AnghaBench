
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int dma_tx_in_progress; int dma_tx_chan; int dma_wait; scalar_t__ lpuart_dma_tx_use; int port; int lpuart_timer; scalar_t__ lpuart_dma_rx_use; } ;


 int del_timer_sync (int *) ;
 int dmaengine_terminate_all (int ) ;
 int lpuart_dma_rx_free (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static void lpuart_dma_shutdown(struct lpuart_port *sport)
{
 if (sport->lpuart_dma_rx_use) {
  del_timer_sync(&sport->lpuart_timer);
  lpuart_dma_rx_free(&sport->port);
 }

 if (sport->lpuart_dma_tx_use) {
  if (wait_event_interruptible(sport->dma_wait,
   !sport->dma_tx_in_progress) != 0) {
   sport->dma_tx_in_progress = 0;
   dmaengine_terminate_all(sport->dma_tx_chan);
  }
 }
}
