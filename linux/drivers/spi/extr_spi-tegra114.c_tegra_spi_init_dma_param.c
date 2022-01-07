
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {void* tx_dma_phys; int * tx_dma_buf; struct dma_chan* tx_dma_chan; void* rx_dma_phys; int * rx_dma_buf; struct dma_chan* rx_dma_chan; int dev; int dma_buf_size; } ;
struct dma_chan {int dummy; } ;
typedef void* dma_addr_t ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int PTR_ERR (struct dma_chan*) ;
 int dev_err (int ,char*,...) ;
 int * dma_alloc_coherent (int ,int ,void**,int ) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* dma_request_slave_channel_reason (int ,char*) ;

__attribute__((used)) static int tegra_spi_init_dma_param(struct tegra_spi_data *tspi,
   bool dma_to_memory)
{
 struct dma_chan *dma_chan;
 u32 *dma_buf;
 dma_addr_t dma_phys;
 int ret;

 dma_chan = dma_request_slave_channel_reason(tspi->dev,
     dma_to_memory ? "rx" : "tx");
 if (IS_ERR(dma_chan)) {
  ret = PTR_ERR(dma_chan);
  if (ret != -EPROBE_DEFER)
   dev_err(tspi->dev,
    "Dma channel is not available: %d\n", ret);
  return ret;
 }

 dma_buf = dma_alloc_coherent(tspi->dev, tspi->dma_buf_size,
    &dma_phys, GFP_KERNEL);
 if (!dma_buf) {
  dev_err(tspi->dev, " Not able to allocate the dma buffer\n");
  dma_release_channel(dma_chan);
  return -ENOMEM;
 }

 if (dma_to_memory) {
  tspi->rx_dma_chan = dma_chan;
  tspi->rx_dma_buf = dma_buf;
  tspi->rx_dma_phys = dma_phys;
 } else {
  tspi->tx_dma_chan = dma_chan;
  tspi->tx_dma_buf = dma_buf;
  tspi->tx_dma_phys = dma_phys;
 }
 return 0;
}
