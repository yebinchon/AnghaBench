
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_port {int * dma_chan_tx; int * rx_buf; int rx_cookie; int * dma_chan_rx; } ;


 int EINVAL ;
 int dma_release_channel (int *) ;
 int dmaengine_terminate_sync (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void imx_uart_dma_exit(struct imx_port *sport)
{
 if (sport->dma_chan_rx) {
  dmaengine_terminate_sync(sport->dma_chan_rx);
  dma_release_channel(sport->dma_chan_rx);
  sport->dma_chan_rx = ((void*)0);
  sport->rx_cookie = -EINVAL;
  kfree(sport->rx_buf);
  sport->rx_buf = ((void*)0);
 }

 if (sport->dma_chan_tx) {
  dmaengine_terminate_sync(sport->dma_chan_tx);
  dma_release_channel(sport->dma_chan_tx);
  sport->dma_chan_tx = ((void*)0);
 }
}
