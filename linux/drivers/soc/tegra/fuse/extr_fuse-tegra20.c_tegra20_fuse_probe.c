
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int src_maxburst; int dst_maxburst; int device_fc; int direction; void* dst_addr_width; void* src_addr_width; } ;
struct TYPE_4__ {int lock; int wait; TYPE_1__ config; int chan; int virt; int phys; } ;
struct tegra_fuse {int read; TYPE_2__ apbdma; int dev; } ;
typedef int dma_cap_mask_t ;


 int DMA_DEV_TO_MEM ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_filter ;
 int dma_release_channel (int ) ;
 int dma_request_channel (int ,int ,int *) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int tegra20_fuse_read ;

__attribute__((used)) static int tegra20_fuse_probe(struct tegra_fuse *fuse)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);

 fuse->apbdma.chan = dma_request_channel(mask, dma_filter, ((void*)0));
 if (!fuse->apbdma.chan)
  return -EPROBE_DEFER;

 fuse->apbdma.virt = dma_alloc_coherent(fuse->dev, sizeof(u32),
            &fuse->apbdma.phys,
            GFP_KERNEL);
 if (!fuse->apbdma.virt) {
  dma_release_channel(fuse->apbdma.chan);
  return -ENOMEM;
 }

 fuse->apbdma.config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 fuse->apbdma.config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 fuse->apbdma.config.src_maxburst = 1;
 fuse->apbdma.config.dst_maxburst = 1;
 fuse->apbdma.config.direction = DMA_DEV_TO_MEM;
 fuse->apbdma.config.device_fc = 0;

 init_completion(&fuse->apbdma.wait);
 mutex_init(&fuse->apbdma.lock);
 fuse->read = tegra20_fuse_read;

 return 0;
}
