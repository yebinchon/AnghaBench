
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_bdma_chan {int tasklet; scalar_t__ active; scalar_t__ regs; } ;


 scalar_t__ TSI721_DMAC_INTE ;
 int iowrite32 (int ,scalar_t__) ;
 int tasklet_hi_schedule (int *) ;

void tsi721_bdma_handler(struct tsi721_bdma_chan *bdma_chan)
{

 iowrite32(0, bdma_chan->regs + TSI721_DMAC_INTE);
 if (bdma_chan->active)
  tasklet_hi_schedule(&bdma_chan->tasklet);
}
