
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_len; int fragmens_len; int width; struct dma_chan** dma_chan; } ;
struct sprd_spi {TYPE_1__ dma; int phy_base; } ;
struct spi_transfer {int rx_sg; } ;
struct dma_slave_config {int dst_maxburst; int dst_addr_width; int src_addr_width; int src_addr; } ;
struct dma_chan {int dummy; } ;


 int DMA_DEV_TO_MEM ;
 size_t SPRD_SPI_RX ;
 int sprd_spi_dma_submit (struct dma_chan*,struct dma_slave_config*,int *,int ) ;

__attribute__((used)) static int sprd_spi_dma_rx_config(struct sprd_spi *ss, struct spi_transfer *t)
{
 struct dma_chan *dma_chan = ss->dma.dma_chan[SPRD_SPI_RX];
 struct dma_slave_config config = {
  .src_addr = ss->phy_base,
  .src_addr_width = ss->dma.width,
  .dst_addr_width = ss->dma.width,
  .dst_maxburst = ss->dma.fragmens_len,
 };
 int ret;

 ret = sprd_spi_dma_submit(dma_chan, &config, &t->rx_sg, DMA_DEV_TO_MEM);
 if (ret)
  return ret;

 return ss->dma.rx_len;
}
