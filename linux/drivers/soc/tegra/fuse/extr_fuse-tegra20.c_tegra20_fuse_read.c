
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ src_addr; } ;
struct TYPE_3__ {int lock; int * virt; int chan; int wait; int phys; TYPE_2__ config; } ;
struct tegra_fuse {TYPE_1__ apbdma; int clk; scalar_t__ phys; } ;
struct dma_async_tx_descriptor {struct tegra_fuse* callback_param; int callback; } ;


 unsigned long DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 unsigned long DMA_PREP_INTERRUPT ;
 scalar_t__ FUSE_BEGIN ;
 scalar_t__ WARN (int,char*) ;
 int apb_dma_complete ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (int ,int ,int,int ,unsigned long) ;
 int dmaengine_slave_config (int ,TYPE_2__*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static u32 tegra20_fuse_read(struct tegra_fuse *fuse, unsigned int offset)
{
 unsigned long flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
 struct dma_async_tx_descriptor *dma_desc;
 unsigned long time_left;
 u32 value = 0;
 int err;

 mutex_lock(&fuse->apbdma.lock);

 fuse->apbdma.config.src_addr = fuse->phys + FUSE_BEGIN + offset;

 err = dmaengine_slave_config(fuse->apbdma.chan, &fuse->apbdma.config);
 if (err)
  goto out;

 dma_desc = dmaengine_prep_slave_single(fuse->apbdma.chan,
            fuse->apbdma.phys,
            sizeof(u32), DMA_DEV_TO_MEM,
            flags);
 if (!dma_desc)
  goto out;

 dma_desc->callback = apb_dma_complete;
 dma_desc->callback_param = fuse;

 reinit_completion(&fuse->apbdma.wait);

 clk_prepare_enable(fuse->clk);

 dmaengine_submit(dma_desc);
 dma_async_issue_pending(fuse->apbdma.chan);
 time_left = wait_for_completion_timeout(&fuse->apbdma.wait,
      msecs_to_jiffies(50));

 if (WARN(time_left == 0, "apb read dma timed out"))
  dmaengine_terminate_all(fuse->apbdma.chan);
 else
  value = *fuse->apbdma.virt;

 clk_disable_unprepare(fuse->clk);

out:
 mutex_unlock(&fuse->apbdma.lock);
 return value;
}
