
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_bdma_chan {scalar_t__ regs; } ;


 scalar_t__ TSI721_DMAC_INT ;
 scalar_t__ TSI721_DMAC_INTE ;
 int TSI721_DMAC_INT_ALL ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void
tsi721_bdma_interrupt_enable(struct tsi721_bdma_chan *bdma_chan, int enable)
{
 if (enable) {

  iowrite32(TSI721_DMAC_INT_ALL,
   bdma_chan->regs + TSI721_DMAC_INT);
  ioread32(bdma_chan->regs + TSI721_DMAC_INT);

  iowrite32(TSI721_DMAC_INT_ALL,
   bdma_chan->regs + TSI721_DMAC_INTE);
 } else {

  iowrite32(0, bdma_chan->regs + TSI721_DMAC_INTE);

  iowrite32(TSI721_DMAC_INT_ALL,
   bdma_chan->regs + TSI721_DMAC_INT);
 }

}
