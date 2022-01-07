
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi148_driver {int * dma_queue; } ;


 int TSI148_LCSR_INTC_DMA0C ;
 int TSI148_LCSR_INTC_DMA1C ;
 int TSI148_LCSR_INTS_DMA0S ;
 int TSI148_LCSR_INTS_DMA1S ;
 int wake_up (int *) ;

__attribute__((used)) static u32 tsi148_DMA_irqhandler(struct tsi148_driver *bridge,
 int channel_mask)
{
 u32 serviced = 0;

 if (channel_mask & TSI148_LCSR_INTS_DMA0S) {
  wake_up(&bridge->dma_queue[0]);
  serviced |= TSI148_LCSR_INTC_DMA0C;
 }
 if (channel_mask & TSI148_LCSR_INTS_DMA1S) {
  wake_up(&bridge->dma_queue[1]);
  serviced |= TSI148_LCSR_INTC_DMA1C;
 }

 return serviced;
}
