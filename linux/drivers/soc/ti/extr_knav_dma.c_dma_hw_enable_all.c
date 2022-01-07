
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_dma_device {int max_tx_chan; TYPE_1__* reg_tx_chan; } ;
struct TYPE_2__ {int control; int mode; } ;


 int DMA_ENABLE ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static void dma_hw_enable_all(struct knav_dma_device *dma)
{
 int i;

 for (i = 0; i < dma->max_tx_chan; i++) {
  writel_relaxed(0, &dma->reg_tx_chan[i].mode);
  writel_relaxed(DMA_ENABLE, &dma->reg_tx_chan[i].control);
 }
}
