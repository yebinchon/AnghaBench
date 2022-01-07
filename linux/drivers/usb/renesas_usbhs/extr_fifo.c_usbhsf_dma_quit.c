
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_fifo {int * rx_chan; int * tx_chan; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void usbhsf_dma_quit(struct usbhs_priv *priv, struct usbhs_fifo *fifo)
{
 if (fifo->tx_chan)
  dma_release_channel(fifo->tx_chan);
 if (fifo->rx_chan)
  dma_release_channel(fifo->rx_chan);

 fifo->tx_chan = ((void*)0);
 fifo->rx_chan = ((void*)0);
}
