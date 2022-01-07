
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct net2272 {int dma_eot_polarity; int dma_dack_polarity; int dma_dreq_polarity; TYPE_1__ gadget; } ;


 int DACK_POLARITY ;
 int DATA_WIDTH ;
 int DMAREQ ;
 int DMA_BUFFER_VALID ;
 int DMA_CONTROL_DACK ;
 int DMA_ENDPOINT_SELECT ;
 int DMA_MODE ;
 int DMA_REQUEST_ENABLE ;
 int DREQ_POLARITY ;
 int EOT_POLARITY ;
 int IRQENB0 ;
 int IRQENB1 ;
 int IRQSTAT0 ;
 int IRQSTAT1 ;
 int LOCCTL ;
 int LOCCTL1 ;
 int SUSPEND_REQUEST_INTERRUPT ;
 int USB_SPEED_UNKNOWN ;
 int dma_ep ;
 int dma_mode ;
 int fifo_mode ;
 int net2272_cancel_dma (struct net2272*) ;
 int net2272_read (struct net2272*,int ) ;
 int net2272_set_fifo_mode (struct net2272*,int) ;
 int net2272_write (struct net2272*,int ,int) ;

__attribute__((used)) static void
net2272_usb_reset(struct net2272 *dev)
{
 dev->gadget.speed = USB_SPEED_UNKNOWN;

 net2272_cancel_dma(dev);

 net2272_write(dev, IRQENB0, 0);
 net2272_write(dev, IRQENB1, 0);


 net2272_write(dev, IRQSTAT0, 0xff);
 net2272_write(dev, IRQSTAT1, ~(1 << SUSPEND_REQUEST_INTERRUPT));

 net2272_write(dev, DMAREQ,
  (0 << DMA_BUFFER_VALID) |
  (0 << DMA_REQUEST_ENABLE) |
  (1 << DMA_CONTROL_DACK) |
  (dev->dma_eot_polarity << EOT_POLARITY) |
  (dev->dma_dack_polarity << DACK_POLARITY) |
  (dev->dma_dreq_polarity << DREQ_POLARITY) |
  ((dma_ep >> 1) << DMA_ENDPOINT_SELECT));

 net2272_cancel_dma(dev);
 net2272_set_fifo_mode(dev, (fifo_mode <= 3) ? fifo_mode : 0);





 net2272_write(dev, LOCCTL, net2272_read(dev, LOCCTL) | (1 << DATA_WIDTH));
 net2272_write(dev, LOCCTL1, (dma_mode << DMA_MODE));
}
