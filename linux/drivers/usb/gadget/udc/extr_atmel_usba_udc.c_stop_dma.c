
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int name; } ;
struct usba_ep {TYPE_1__ ep; TYPE_2__* udc; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_3__* pdev; } ;


 int CONTROL ;
 int ETIMEDOUT ;
 int STATUS ;
 int USBA_DMA_CH_EN ;
 int dev_err (int *,char*,int ) ;
 int udelay (int) ;
 int usba_dma_readl (struct usba_ep*,int ) ;
 int usba_dma_writel (struct usba_ep*,int ,int ) ;

__attribute__((used)) static int stop_dma(struct usba_ep *ep, u32 *pstatus)
{
 unsigned int timeout;
 u32 status;





 usba_dma_writel(ep, CONTROL, 0);


 for (timeout = 40; timeout; --timeout) {
  status = usba_dma_readl(ep, STATUS);
  if (!(status & USBA_DMA_CH_EN))
   break;
  udelay(1);
 }

 if (pstatus)
  *pstatus = status;

 if (timeout == 0) {
  dev_err(&ep->udc->pdev->dev,
   "%s: timed out waiting for DMA FIFO to empty\n",
   ep->ep.name);
  return -ETIMEDOUT;
 }

 return 0;
}
