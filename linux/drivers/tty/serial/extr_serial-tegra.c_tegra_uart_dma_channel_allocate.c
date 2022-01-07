
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dev; int mapbase; TYPE_3__* state; } ;
struct tegra_uart_port {unsigned char* rx_dma_buf_virt; unsigned char* tx_dma_buf_virt; TYPE_4__ uport; void* tx_dma_buf_phys; struct dma_chan* tx_dma_chan; void* rx_dma_buf_phys; struct dma_chan* rx_dma_chan; TYPE_1__* cdata; } ;
struct dma_slave_config {int dst_maxburst; void* dst_addr_width; int dst_addr; int src_maxburst; void* src_addr_width; int src_addr; } ;
struct dma_chan {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_6__ {unsigned char* buf; } ;
struct TYPE_7__ {TYPE_2__ xmit; } ;
struct TYPE_5__ {int max_dma_burst_bytes; } ;


 void* DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int PTR_ERR (struct dma_chan*) ;
 int TEGRA_UART_RX_DMA_BUFFER_SIZE ;
 int UART_XMIT_SIZE ;
 int dev_err (int ,char*,...) ;
 unsigned char* dma_alloc_coherent (int ,int ,void**,int ) ;
 void* dma_map_single (int ,unsigned char*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* dma_request_slave_channel_reason (int ,char*) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int tegra_uart_dma_channel_free (struct tegra_uart_port*,int) ;

__attribute__((used)) static int tegra_uart_dma_channel_allocate(struct tegra_uart_port *tup,
   bool dma_to_memory)
{
 struct dma_chan *dma_chan;
 unsigned char *dma_buf;
 dma_addr_t dma_phys;
 int ret;
 struct dma_slave_config dma_sconfig;

 dma_chan = dma_request_slave_channel_reason(tup->uport.dev,
      dma_to_memory ? "rx" : "tx");
 if (IS_ERR(dma_chan)) {
  ret = PTR_ERR(dma_chan);
  dev_err(tup->uport.dev,
   "DMA channel alloc failed: %d\n", ret);
  return ret;
 }

 if (dma_to_memory) {
  dma_buf = dma_alloc_coherent(tup->uport.dev,
    TEGRA_UART_RX_DMA_BUFFER_SIZE,
     &dma_phys, GFP_KERNEL);
  if (!dma_buf) {
   dev_err(tup->uport.dev,
    "Not able to allocate the dma buffer\n");
   dma_release_channel(dma_chan);
   return -ENOMEM;
  }
  dma_sconfig.src_addr = tup->uport.mapbase;
  dma_sconfig.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
  dma_sconfig.src_maxburst = tup->cdata->max_dma_burst_bytes;
  tup->rx_dma_chan = dma_chan;
  tup->rx_dma_buf_virt = dma_buf;
  tup->rx_dma_buf_phys = dma_phys;
 } else {
  dma_phys = dma_map_single(tup->uport.dev,
   tup->uport.state->xmit.buf, UART_XMIT_SIZE,
   DMA_TO_DEVICE);
  if (dma_mapping_error(tup->uport.dev, dma_phys)) {
   dev_err(tup->uport.dev, "dma_map_single tx failed\n");
   dma_release_channel(dma_chan);
   return -ENOMEM;
  }
  dma_buf = tup->uport.state->xmit.buf;
  dma_sconfig.dst_addr = tup->uport.mapbase;
  dma_sconfig.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
  dma_sconfig.dst_maxburst = 16;
  tup->tx_dma_chan = dma_chan;
  tup->tx_dma_buf_virt = dma_buf;
  tup->tx_dma_buf_phys = dma_phys;
 }

 ret = dmaengine_slave_config(dma_chan, &dma_sconfig);
 if (ret < 0) {
  dev_err(tup->uport.dev,
   "Dma slave config failed, err = %d\n", ret);
  tegra_uart_dma_channel_free(tup, dma_to_memory);
  return ret;
 }

 return 0;
}
