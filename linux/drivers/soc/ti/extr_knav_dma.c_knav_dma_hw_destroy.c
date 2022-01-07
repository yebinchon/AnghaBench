
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_dma_device {int max_rx_chan; int max_tx_chan; int lock; TYPE_2__* reg_tx_chan; TYPE_1__* reg_rx_chan; } ;
struct TYPE_4__ {int control; } ;
struct TYPE_3__ {int control; } ;


 unsigned int DMA_ENABLE ;
 unsigned int REG_MASK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (unsigned int,int *) ;

__attribute__((used)) static void knav_dma_hw_destroy(struct knav_dma_device *dma)
{
 int i;
 unsigned v;

 spin_lock(&dma->lock);
 v = ~DMA_ENABLE & REG_MASK;

 for (i = 0; i < dma->max_rx_chan; i++)
  writel_relaxed(v, &dma->reg_rx_chan[i].control);

 for (i = 0; i < dma->max_tx_chan; i++)
  writel_relaxed(v, &dma->reg_tx_chan[i].control);
 spin_unlock(&dma->lock);
}
