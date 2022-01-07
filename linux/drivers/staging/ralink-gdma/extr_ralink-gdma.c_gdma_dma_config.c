
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdma_dmaengine_chan {void* burst_size; int fifo_addr; int slave_id; } ;
struct TYPE_2__ {int dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;
struct dma_slave_config {int direction; int src_maxburst; int src_addr; int slave_id; int src_addr_width; int dst_maxburst; int dst_addr; int dst_addr_width; scalar_t__ device_fc; } ;
struct dma_chan {int dummy; } ;




 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;
 int dev_err (int ,char*,...) ;
 struct gdma_dma_dev* gdma_dma_chan_get_dev (struct gdma_dmaengine_chan*) ;
 void* gdma_dma_maxburst (int ) ;
 struct gdma_dmaengine_chan* to_gdma_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int gdma_dma_config(struct dma_chan *c,
      struct dma_slave_config *config)
{
 struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);

 if (config->device_fc) {
  dev_err(dma_dev->ddev.dev, "not support flow controller\n");
  return -EINVAL;
 }

 switch (config->direction) {
 case 128:
  if (config->dst_addr_width != DMA_SLAVE_BUSWIDTH_4_BYTES) {
   dev_err(dma_dev->ddev.dev, "only support 4 byte buswidth\n");
   return -EINVAL;
  }
  chan->slave_id = config->slave_id;
  chan->fifo_addr = config->dst_addr;
  chan->burst_size = gdma_dma_maxburst(config->dst_maxburst);
  break;
 case 129:
  if (config->src_addr_width != DMA_SLAVE_BUSWIDTH_4_BYTES) {
   dev_err(dma_dev->ddev.dev, "only support 4 byte buswidth\n");
   return -EINVAL;
  }
  chan->slave_id = config->slave_id;
  chan->fifo_addr = config->src_addr;
  chan->burst_size = gdma_dma_maxburst(config->src_maxburst);
  break;
 default:
  dev_err(dma_dev->ddev.dev, "direction type %d error\n",
   config->direction);
  return -EINVAL;
 }

 return 0;
}
