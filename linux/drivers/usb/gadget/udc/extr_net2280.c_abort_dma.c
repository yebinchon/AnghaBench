
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net2280_ep {TYPE_1__* dma; int queue; } ;
struct TYPE_3__ {int dmastat; } ;


 int BIT (int ) ;
 int DMA_ABORT ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int scan_dma_completions (struct net2280_ep*) ;
 int spin_stop_dma (TYPE_1__*) ;
 int stop_dma (TYPE_1__*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void abort_dma(struct net2280_ep *ep)
{

 if (likely(!list_empty(&ep->queue))) {

  writel(BIT(DMA_ABORT), &ep->dma->dmastat);
  spin_stop_dma(ep->dma);
 } else
  stop_dma(ep->dma);
 scan_dma_completions(ep);
}
