
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct pxa_udc {int enabled; int * pxa_ep; int dev; int stats; TYPE_1__ gadget; int clk; } ;


 int UDCCR ;
 int UDCCR_EMCE ;
 int UDCCR_UDE ;
 int UDCCSR0_ACM ;
 int UDCICR0 ;
 int UDCICR1 ;
 int UDCICR1_IECC ;
 int UDCICR1_IERS ;
 int UDCICR1_IERU ;
 int UDCICR1_IESU ;
 int USB_SPEED_FULL ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 int ep0_idle (struct pxa_udc*) ;
 int ep_write_UDCCSR (int *,int ) ;
 int memset (int *,int ,int) ;
 int msleep (int) ;
 int pio_irq_enable (int *) ;
 int pxa_eps_setup (struct pxa_udc*) ;
 int udc_clear_mask_UDCCR (struct pxa_udc*,int ) ;
 int udc_readl (struct pxa_udc*,int ) ;
 int udc_set_mask_UDCCR (struct pxa_udc*,int ) ;
 int udc_writel (struct pxa_udc*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void udc_enable(struct pxa_udc *udc)
{
 if (udc->enabled)
  return;

 clk_enable(udc->clk);
 udc_writel(udc, UDCICR0, 0);
 udc_writel(udc, UDCICR1, 0);
 udc_clear_mask_UDCCR(udc, UDCCR_UDE);

 ep0_idle(udc);
 udc->gadget.speed = USB_SPEED_FULL;
 memset(&udc->stats, 0, sizeof(udc->stats));

 pxa_eps_setup(udc);
 udc_set_mask_UDCCR(udc, UDCCR_UDE);
 ep_write_UDCCSR(&udc->pxa_ep[0], UDCCSR0_ACM);
 udelay(2);
 if (udc_readl(udc, UDCCR) & UDCCR_EMCE)
  dev_err(udc->dev, "Configuration errors, udc disabled\n");




 msleep(100);


 udc_writel(udc, UDCICR1,
   UDCICR1_IECC | UDCICR1_IERU
   | UDCICR1_IESU | UDCICR1_IERS);


 pio_irq_enable(&udc->pxa_ep[0]);

 udc->enabled = 1;
}
