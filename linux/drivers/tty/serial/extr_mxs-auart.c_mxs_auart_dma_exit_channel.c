
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {int * rx_dma_buf; int * tx_dma_buf; int * rx_dma_chan; int * tx_dma_chan; } ;


 int dma_release_channel (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void mxs_auart_dma_exit_channel(struct mxs_auart_port *s)
{
 if (s->tx_dma_chan) {
  dma_release_channel(s->tx_dma_chan);
  s->tx_dma_chan = ((void*)0);
 }
 if (s->rx_dma_chan) {
  dma_release_channel(s->rx_dma_chan);
  s->rx_dma_chan = ((void*)0);
 }

 kfree(s->tx_dma_buf);
 kfree(s->rx_dma_buf);
 s->tx_dma_buf = ((void*)0);
 s->rx_dma_buf = ((void*)0);
}
