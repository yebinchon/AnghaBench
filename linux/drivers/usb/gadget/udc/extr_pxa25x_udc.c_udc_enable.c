
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ irqs; } ;
struct TYPE_3__ {int speed; } ;
struct pxa25x_udc {scalar_t__ has_cfr; TYPE_2__ stats; TYPE_1__ gadget; } ;


 int UDCCFR ;
 int UDCCFR_ACM ;
 int UDCCFR_MB1 ;
 int UDCCR ;
 int UDCCR_REM ;
 int UDCCR_RESIR ;
 int UDCCR_RSTIR ;
 int UDCCR_SRM ;
 int UDCCR_SUSIR ;
 int UDCCR_UDA ;
 int UDCCR_UDE ;
 int UDC_RES1 ;
 int UDC_RES2 ;
 int UICR0 ;
 int UICR0_IM0 ;
 int USB_SPEED_UNKNOWN ;
 int ep0_idle (struct pxa25x_udc*) ;
 int pullup_on () ;
 int udc_ack_int_UDCCR (struct pxa25x_udc*,int) ;
 int udc_clear_mask_UDCCR (struct pxa25x_udc*,int) ;
 int udc_get_reg (struct pxa25x_udc*,int ) ;
 int udc_set_mask_UDCCR (struct pxa25x_udc*,int) ;
 int udc_set_reg (struct pxa25x_udc*,int ,int) ;

__attribute__((used)) static void udc_enable (struct pxa25x_udc *dev)
{
 udc_clear_mask_UDCCR(dev, UDCCR_UDE);


 udc_ack_int_UDCCR(dev, UDCCR_SUSIR| UDCCR_RESIR);

 ep0_idle(dev);
 dev->gadget.speed = USB_SPEED_UNKNOWN;
 dev->stats.irqs = 0;







 udc_set_mask_UDCCR(dev, UDCCR_UDE);
 if (!(udc_get_reg(dev, UDCCR) & UDCCR_UDA))
  udc_ack_int_UDCCR(dev, UDCCR_RSTIR);

 if (dev->has_cfr ) {



  udc_set_reg(dev, UDCCFR, UDCCFR_ACM | UDCCFR_MB1);
 } else {






  udc_set_reg(dev, UDC_RES1, 0x00);
  udc_set_reg(dev, UDC_RES2, 0x00);
 }


 udc_clear_mask_UDCCR(dev, UDCCR_SRM | UDCCR_REM);


 udc_set_reg(dev, UICR0, udc_get_reg(dev, UICR0) & ~UICR0_IM0);


 pullup_on();
}
