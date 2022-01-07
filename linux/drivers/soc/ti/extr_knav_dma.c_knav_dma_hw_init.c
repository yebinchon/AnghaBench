
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_dma_device {unsigned int rx_timeout; unsigned int tx_priority; unsigned int rx_priority; int max_rx_chan; int logical_queue_managers; unsigned int* qm_base_address; int lock; TYPE_2__* reg_global; TYPE_1__* reg_rx_chan; scalar_t__ loopback; } ;
struct TYPE_4__ {int * qm_base_address; int priority_control; int perf_control; int emulation_control; } ;
struct TYPE_3__ {int control; } ;


 unsigned int DMA_ENABLE ;
 unsigned int DMA_LOOPBACK ;
 unsigned int DMA_RX_PRIO_SHIFT ;
 unsigned int DMA_RX_TIMEOUT_MASK ;
 unsigned int DMA_RX_TIMEOUT_SHIFT ;
 unsigned int DMA_TX_PRIO_SHIFT ;
 unsigned int readl_relaxed (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (unsigned int,int *) ;

__attribute__((used)) static void knav_dma_hw_init(struct knav_dma_device *dma)
{
 unsigned v;
 int i;

 spin_lock(&dma->lock);
 v = dma->loopback ? DMA_LOOPBACK : 0;
 writel_relaxed(v, &dma->reg_global->emulation_control);

 v = readl_relaxed(&dma->reg_global->perf_control);
 v |= ((dma->rx_timeout & DMA_RX_TIMEOUT_MASK) << DMA_RX_TIMEOUT_SHIFT);
 writel_relaxed(v, &dma->reg_global->perf_control);

 v = ((dma->tx_priority << DMA_TX_PRIO_SHIFT) |
      (dma->rx_priority << DMA_RX_PRIO_SHIFT));

 writel_relaxed(v, &dma->reg_global->priority_control);


 for (i = 0; i < dma->max_rx_chan; i++)
  writel_relaxed(DMA_ENABLE, &dma->reg_rx_chan[i].control);

 for (i = 0; i < dma->logical_queue_managers; i++)
  writel_relaxed(dma->qm_base_address[i],
          &dma->reg_global->qm_base_address[i]);
 spin_unlock(&dma->lock);
}
