
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ plx9054_base_addr; } ;
struct net2272 {int dma_busy; int dev_id; int dma_eot_polarity; int dma_dack_polarity; int dma_dreq_polarity; TYPE_1__ rdk1; int dev; } ;


 int DACK_POLARITY ;
 int DEMAND_MODE ;
 unsigned int DIRECTION_OF_TRANSFER ;
 scalar_t__ DMADPR0 ;
 scalar_t__ DMALADR0 ;
 scalar_t__ DMAMODE0 ;
 scalar_t__ DMAPADR0 ;
 int DMAREQ ;
 scalar_t__ DMASIZ0 ;
 int DMA_BUFFER_VALID ;
 int DMA_CHANNEL_INTERRUPT_SELECT ;
 int DMA_CONTROL_DACK ;
 unsigned int DMA_ENDPOINT_SELECT ;
 int DMA_EOT_ENABLE ;
 int DMA_REQUEST_ENABLE ;
 int DONE_INTERRUPT_ENABLE ;
 int DREQ_POLARITY ;
 int EBUSY ;
 int EINVAL ;
 int EOT_POLARITY ;
 int FAST_SLOW_TERMINATE_MODE_SELECT ;
 scalar_t__ INTCSR ;
 int INTERRUPT_AFTER_TERMINAL_COUNT ;
 int LOCAL_ADDRESSING_MODE ;
 int LOCAL_BURST_ENABLE ;
 int LOCAL_BUS_WIDTH ;
 int LOCAL_DMA_CHANNEL_0_INTERRUPT_ENABLE ;

 int SCRATCH ;
 int TA_READY_INPUT_ENABLE ;
 int dev_vdbg (int ,char*,unsigned int,int,unsigned int,unsigned int) ;
 int net2272_read (struct net2272*,int ) ;
 int net2272_write (struct net2272*,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
net2272_request_dma(struct net2272 *dev, unsigned ep, u32 buf,
 unsigned len, unsigned dir)
{
 dev_vdbg(dev->dev, "request_dma ep %d buf %08x len %d dir %d\n",
  ep, buf, len, dir);


 if (dev->dma_busy)
  return -EBUSY;




 if ((dir == 1) && (len > 0x1000000))
  return -EINVAL;

 dev->dma_busy = 1;
 net2272_write(dev, DMAREQ,
  (0 << DMA_BUFFER_VALID) |
  (1 << DMA_REQUEST_ENABLE) |
  (1 << DMA_CONTROL_DACK) |
  (dev->dma_eot_polarity << EOT_POLARITY) |
  (dev->dma_dack_polarity << DACK_POLARITY) |
  (dev->dma_dreq_polarity << DREQ_POLARITY) |
  ((ep >> 1) << DMA_ENDPOINT_SELECT));

 (void) net2272_read(dev, SCRATCH);

 return 0;
}
