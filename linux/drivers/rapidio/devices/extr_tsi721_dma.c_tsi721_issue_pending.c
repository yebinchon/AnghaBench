
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi721_bdma_chan {int lock; scalar_t__ active; int id; } ;
struct dma_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {int device; } ;


 int DMA ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tsi721_bdma_chan* to_tsi721_chan (struct dma_chan*) ;
 int tsi721_advance_work (struct tsi721_bdma_chan*,int *) ;
 scalar_t__ tsi721_dma_is_idle (struct tsi721_bdma_chan*) ;
 int tsi_debug (int ,int *,char*,int ) ;

__attribute__((used)) static void tsi721_issue_pending(struct dma_chan *dchan)
{
 struct tsi721_bdma_chan *bdma_chan = to_tsi721_chan(dchan);

 tsi_debug(DMA, &dchan->dev->device, "DMAC%d", bdma_chan->id);

 spin_lock_bh(&bdma_chan->lock);
 if (tsi721_dma_is_idle(bdma_chan) && bdma_chan->active) {
  tsi721_advance_work(bdma_chan, ((void*)0));
 }
 spin_unlock_bh(&bdma_chan->lock);
}
