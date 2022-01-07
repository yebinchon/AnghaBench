
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_slink_data {int dma_buf_size; int dev; struct dma_chan* tx_dma_chan; int * tx_dma_buf; int tx_dma_phys; int * rx_dma_buf; struct dma_chan* rx_dma_chan; int rx_dma_phys; } ;
struct dma_chan {int dummy; } ;
typedef int dma_addr_t ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int dma_release_channel (struct dma_chan*) ;

__attribute__((used)) static void tegra_slink_deinit_dma_param(struct tegra_slink_data *tspi,
 bool dma_to_memory)
{
 u32 *dma_buf;
 dma_addr_t dma_phys;
 struct dma_chan *dma_chan;

 if (dma_to_memory) {
  dma_buf = tspi->rx_dma_buf;
  dma_chan = tspi->rx_dma_chan;
  dma_phys = tspi->rx_dma_phys;
  tspi->rx_dma_chan = ((void*)0);
  tspi->rx_dma_buf = ((void*)0);
 } else {
  dma_buf = tspi->tx_dma_buf;
  dma_chan = tspi->tx_dma_chan;
  dma_phys = tspi->tx_dma_phys;
  tspi->tx_dma_buf = ((void*)0);
  tspi->tx_dma_chan = ((void*)0);
 }
 if (!dma_chan)
  return;

 dma_free_coherent(tspi->dev, tspi->dma_buf_size, dma_buf, dma_phys);
 dma_release_channel(dma_chan);
}
