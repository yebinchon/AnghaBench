
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_bdma_chan {int lock; scalar_t__ regs; int active; } ;


 scalar_t__ TSI721_DMAC_CTL ;
 int TSI721_DMAC_CTL_SUSP ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tsi721_dma_is_idle (struct tsi721_bdma_chan*) ;
 int udelay (int) ;

__attribute__((used)) static void tsi721_dma_stop(struct tsi721_bdma_chan *bdma_chan)
{
 if (!bdma_chan->active)
  return;
 spin_lock_bh(&bdma_chan->lock);
 if (!tsi721_dma_is_idle(bdma_chan)) {
  int timeout = 100000;


  iowrite32(TSI721_DMAC_CTL_SUSP,
     bdma_chan->regs + TSI721_DMAC_CTL);


  while (!tsi721_dma_is_idle(bdma_chan) && --timeout)
   udelay(1);
 }

 spin_unlock_bh(&bdma_chan->lock);
}
