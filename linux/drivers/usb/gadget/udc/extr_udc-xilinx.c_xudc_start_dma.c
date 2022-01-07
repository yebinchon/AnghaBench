
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;int dev; scalar_t__ addr; int (* write_fn ) (scalar_t__,int ,int) ;} ;
struct xusb_ep {struct xusb_udc* udc; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int ETIMEDOUT ;
 int XUSB_DMA_DDAR_ADDR_OFFSET ;
 int XUSB_DMA_DMASR_BUSY ;
 int XUSB_DMA_DMASR_ERROR ;
 int XUSB_DMA_DSAR_ADDR_OFFSET ;
 int XUSB_DMA_LENGTH_OFFSET ;
 scalar_t__ XUSB_DMA_STATUS_OFFSET ;
 int dev_err (int ,char*) ;
 int stub1 (scalar_t__,int ,int) ;
 int stub2 (scalar_t__,int ,int) ;
 int stub3 (scalar_t__,int ,int) ;
 int stub4 (scalar_t__) ;
 int stub5 (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int xudc_start_dma(struct xusb_ep *ep, dma_addr_t src,
     dma_addr_t dst, u32 length)
{
 struct xusb_udc *udc = ep->udc;
 int rc = 0;
 u32 timeout = 500;
 u32 reg;






 udc->write_fn(udc->addr, XUSB_DMA_DSAR_ADDR_OFFSET, src);
 udc->write_fn(udc->addr, XUSB_DMA_DDAR_ADDR_OFFSET, dst);
 udc->write_fn(udc->addr, XUSB_DMA_LENGTH_OFFSET, length);






 do {
  reg = udc->read_fn(udc->addr + XUSB_DMA_STATUS_OFFSET);
  if (!(reg & XUSB_DMA_DMASR_BUSY))
   break;





  timeout--;
  if (!timeout) {
   dev_err(udc->dev, "DMA timeout\n");
   return -ETIMEDOUT;
  }
  udelay(1);
 } while (1);

 if ((udc->read_fn(udc->addr + XUSB_DMA_STATUS_OFFSET) &
     XUSB_DMA_DMASR_ERROR) == XUSB_DMA_DMASR_ERROR){
  dev_err(udc->dev, "DMA Error\n");
  rc = -EINVAL;
 }

 return rc;
}
