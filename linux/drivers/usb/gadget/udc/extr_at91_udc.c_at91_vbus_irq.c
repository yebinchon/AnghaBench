
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vbus_pin; } ;
struct at91_udc {TYPE_1__ board; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int at91_vbus_update (struct at91_udc*,int ) ;
 int gpio_get_value (int ) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t at91_vbus_irq(int irq, void *_udc)
{
 struct at91_udc *udc = _udc;


 udelay(10);
 at91_vbus_update(udc, gpio_get_value(udc->board.vbus_pin));

 return IRQ_HANDLED;
}
