
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int vbus_work (struct lpc32xx_udc*) ;

__attribute__((used)) static irqreturn_t lpc32xx_usb_vbus_irq(int irq, void *_udc)
{
 struct lpc32xx_udc *udc = _udc;

 vbus_work(udc);

 return IRQ_HANDLED;
}
