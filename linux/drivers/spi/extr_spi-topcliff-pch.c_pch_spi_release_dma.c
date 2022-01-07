
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_spi_dma_ctrl {int * chan_rx; int * chan_tx; } ;
struct pch_spi_data {struct pch_spi_dma_ctrl dma; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void pch_spi_release_dma(struct pch_spi_data *data)
{
 struct pch_spi_dma_ctrl *dma;

 dma = &data->dma;
 if (dma->chan_tx) {
  dma_release_channel(dma->chan_tx);
  dma->chan_tx = ((void*)0);
 }
 if (dma->chan_rx) {
  dma_release_channel(dma->chan_rx);
  dma->chan_rx = ((void*)0);
 }
}
