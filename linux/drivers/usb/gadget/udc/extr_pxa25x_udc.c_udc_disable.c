
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct pxa25x_udc {TYPE_1__ gadget; } ;


 int UDCCR_REM ;
 int UDCCR_SRM ;
 int UDCCR_UDE ;
 int UFNRH ;
 int UFNRH_SIM ;
 int UICR0 ;
 int UICR1 ;
 int USB_SPEED_UNKNOWN ;
 int ep0_idle (struct pxa25x_udc*) ;
 int pullup_off () ;
 int udc_clear_mask_UDCCR (struct pxa25x_udc*,int ) ;
 int udc_set_mask_UDCCR (struct pxa25x_udc*,int) ;
 int udc_set_reg (struct pxa25x_udc*,int ,int) ;

__attribute__((used)) static void udc_disable(struct pxa25x_udc *dev)
{

 udc_set_mask_UDCCR(dev, UDCCR_SRM|UDCCR_REM);
 udc_set_reg(dev, UICR0, 0xff);
 udc_set_reg(dev, UICR1, 0xff);
 udc_set_reg(dev, UFNRH, UFNRH_SIM);


 pullup_off();

 udc_clear_mask_UDCCR(dev, UDCCR_UDE);

 ep0_idle (dev);
 dev->gadget.speed = USB_SPEED_UNKNOWN;
}
