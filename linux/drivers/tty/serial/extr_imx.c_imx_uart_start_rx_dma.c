
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_4__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_3__ {struct device* dev; } ;
struct imx_port {int rx_periods; int dma_is_rxing; int rx_cookie; int rx_buf; TYPE_2__ rx_ring; TYPE_1__ port; struct dma_chan* dma_chan_rx; struct scatterlist rx_sgl; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct imx_port* callback_param; int callback; } ;
struct device {int dummy; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int RX_BUF_SIZE ;
 int RX_DMA_PERIODS ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_map_sg (struct device*,struct scatterlist*,int,int ) ;
 int dma_unmap_sg (struct device*,struct scatterlist*,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_cyclic (struct dma_chan*,int ,int,int,int ,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int imx_uart_dma_rx_callback ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 int sg_init_one (struct scatterlist*,int ,int ) ;

__attribute__((used)) static int imx_uart_start_rx_dma(struct imx_port *sport)
{
 struct scatterlist *sgl = &sport->rx_sgl;
 struct dma_chan *chan = sport->dma_chan_rx;
 struct device *dev = sport->port.dev;
 struct dma_async_tx_descriptor *desc;
 int ret;

 sport->rx_ring.head = 0;
 sport->rx_ring.tail = 0;
 sport->rx_periods = RX_DMA_PERIODS;

 sg_init_one(sgl, sport->rx_buf, RX_BUF_SIZE);
 ret = dma_map_sg(dev, sgl, 1, DMA_FROM_DEVICE);
 if (ret == 0) {
  dev_err(dev, "DMA mapping error for RX.\n");
  return -EINVAL;
 }

 desc = dmaengine_prep_dma_cyclic(chan, sg_dma_address(sgl),
  sg_dma_len(sgl), sg_dma_len(sgl) / sport->rx_periods,
  DMA_DEV_TO_MEM, DMA_PREP_INTERRUPT);

 if (!desc) {
  dma_unmap_sg(dev, sgl, 1, DMA_FROM_DEVICE);
  dev_err(dev, "We cannot prepare for the RX slave dma!\n");
  return -EINVAL;
 }
 desc->callback = imx_uart_dma_rx_callback;
 desc->callback_param = sport;

 dev_dbg(dev, "RX: prepare for the DMA.\n");
 sport->dma_is_rxing = 1;
 sport->rx_cookie = dmaengine_submit(desc);
 dma_async_issue_pending(chan);
 return 0;
}
