
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc32xx_udc {int lock; TYPE_1__* ep; int udp_baseaddr; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int hwep_num; } ;


 int IRQ_HANDLED ;
 int NUM_ENDPOINTS ;
 int USBD_EOTINTST (int ) ;
 int USBD_EPDMAST (int ) ;
 int USBD_NDDRTINTST (int ) ;
 int USBD_SYSERRTINTST (int ) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udc_handle_dma_ep (struct lpc32xx_udc*,TYPE_1__*) ;

__attribute__((used)) static irqreturn_t lpc32xx_usb_devdma_irq(int irq, void *_udc)
{
 struct lpc32xx_udc *udc = _udc;

 int i;
 u32 tmp;

 spin_lock(&udc->lock);


 tmp = readl(USBD_EOTINTST(udc->udp_baseaddr)) |
  (readl(USBD_EPDMAST(udc->udp_baseaddr)) &
   readl(USBD_NDDRTINTST(udc->udp_baseaddr))) |
  readl(USBD_SYSERRTINTST(udc->udp_baseaddr));
 for (i = 1; i < NUM_ENDPOINTS; i++) {
  if (tmp & (1 << udc->ep[i].hwep_num))
   udc_handle_dma_ep(udc, &udc->ep[i]);
 }

 spin_unlock(&udc->lock);

 return IRQ_HANDLED;
}
