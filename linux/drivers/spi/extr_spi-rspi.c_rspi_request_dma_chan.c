
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int direction; void* src_addr_width; void* src_addr; void* dst_addr_width; void* dst_addr; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_cap_mask_t ;
typedef void* dma_addr_t ;
typedef int cfg ;


 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int dev_warn (struct device*,char*,...) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* dma_request_slave_channel_compat (int ,int ,void*,struct device*,char*) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int memset (struct dma_slave_config*,int ,int) ;
 int shdma_chan_filter ;

__attribute__((used)) static struct dma_chan *rspi_request_dma_chan(struct device *dev,
           enum dma_transfer_direction dir,
           unsigned int id,
           dma_addr_t port_addr)
{
 dma_cap_mask_t mask;
 struct dma_chan *chan;
 struct dma_slave_config cfg;
 int ret;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);

 chan = dma_request_slave_channel_compat(mask, shdma_chan_filter,
    (void *)(unsigned long)id, dev,
    dir == DMA_MEM_TO_DEV ? "tx" : "rx");
 if (!chan) {
  dev_warn(dev, "dma_request_slave_channel_compat failed\n");
  return ((void*)0);
 }

 memset(&cfg, 0, sizeof(cfg));
 cfg.direction = dir;
 if (dir == DMA_MEM_TO_DEV) {
  cfg.dst_addr = port_addr;
  cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
 } else {
  cfg.src_addr = port_addr;
  cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
 }

 ret = dmaengine_slave_config(chan, &cfg);
 if (ret) {
  dev_warn(dev, "dmaengine_slave_config failed %d\n", ret);
  dma_release_channel(chan);
  return ((void*)0);
 }

 return chan;
}
