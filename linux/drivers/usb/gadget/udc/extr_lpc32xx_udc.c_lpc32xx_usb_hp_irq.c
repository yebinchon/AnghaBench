
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc32xx_udc {int lock; TYPE_1__* ep; int udp_baseaddr; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int hwep_num; } ;


 int EP_IN ;
 int EP_MASK_SEL (int ,int ) ;
 int EP_OUT ;
 int IRQ_HANDLED ;
 int NUM_ENDPOINTS ;
 int USBD_DEVINTCLR (int ) ;
 int USBD_EPINTST (int ) ;
 int USBD_EP_FAST ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udc_handle_ep0_in (struct lpc32xx_udc*) ;
 int udc_handle_ep0_out (struct lpc32xx_udc*) ;
 int udc_handle_eps (struct lpc32xx_udc*,TYPE_1__*) ;
 int writel (int ,int ) ;

__attribute__((used)) static irqreturn_t lpc32xx_usb_hp_irq(int irq, void *_udc)
{
 u32 tmp;
 struct lpc32xx_udc *udc = _udc;

 spin_lock(&udc->lock);


 writel(USBD_EP_FAST, USBD_DEVINTCLR(udc->udp_baseaddr));


 tmp = readl(USBD_EPINTST(udc->udp_baseaddr));


 if (tmp & (EP_MASK_SEL(0, EP_OUT) | EP_MASK_SEL(0, EP_IN))) {

  if (tmp & (EP_MASK_SEL(0, EP_IN)))
   udc_handle_ep0_in(udc);


  if (tmp & (EP_MASK_SEL(0, EP_OUT)))
   udc_handle_ep0_out(udc);
 }


 if (tmp & ~(EP_MASK_SEL(0, EP_OUT) | EP_MASK_SEL(0, EP_IN))) {
  int i;


  for (i = 1; i < NUM_ENDPOINTS; i++) {
   if (tmp & (1 << udc->ep[i].hwep_num))
    udc_handle_eps(udc, &udc->ep[i]);
  }
 }

 spin_unlock(&udc->lock);

 return IRQ_HANDLED;
}
