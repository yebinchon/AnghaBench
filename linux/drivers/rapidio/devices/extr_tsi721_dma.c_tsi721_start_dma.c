
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct tsi721_bdma_chan {scalar_t__ wr_count; scalar_t__ wr_count_next; scalar_t__ regs; int id; TYPE_2__ dchan; } ;
struct TYPE_3__ {int device; } ;


 int DMA ;
 scalar_t__ TSI721_DMAC_DWRCNT ;
 int current ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 int task_pid_nr (int ) ;
 int tsi721_dma_is_idle (struct tsi721_bdma_chan*) ;
 int tsi_debug (int ,int *,char*,int ,scalar_t__,int ) ;
 int tsi_err (int *,char*,int ,...) ;

__attribute__((used)) static void tsi721_start_dma(struct tsi721_bdma_chan *bdma_chan)
{
 if (!tsi721_dma_is_idle(bdma_chan)) {
  tsi_err(&bdma_chan->dchan.dev->device,
   "DMAC%d Attempt to start non-idle channel",
   bdma_chan->id);
  return;
 }

 if (bdma_chan->wr_count == bdma_chan->wr_count_next) {
  tsi_err(&bdma_chan->dchan.dev->device,
   "DMAC%d Attempt to start DMA with no BDs ready %d",
   bdma_chan->id, task_pid_nr(current));
  return;
 }

 tsi_debug(DMA, &bdma_chan->dchan.dev->device, "DMAC%d (wrc=%d) %d",
    bdma_chan->id, bdma_chan->wr_count_next,
    task_pid_nr(current));

 iowrite32(bdma_chan->wr_count_next,
  bdma_chan->regs + TSI721_DMAC_DWRCNT);
 ioread32(bdma_chan->regs + TSI721_DMAC_DWRCNT);

 bdma_chan->wr_count = bdma_chan->wr_count_next;
}
