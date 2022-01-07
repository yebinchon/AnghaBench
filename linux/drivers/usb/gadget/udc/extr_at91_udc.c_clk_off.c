
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct at91_udc {int iclk; int fclk; TYPE_1__ gadget; scalar_t__ clocked; } ;


 int USB_SPEED_UNKNOWN ;
 int clk_disable (int ) ;

__attribute__((used)) static void clk_off(struct at91_udc *udc)
{
 if (!udc->clocked)
  return;
 udc->clocked = 0;
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 clk_disable(udc->fclk);
 clk_disable(udc->iclk);
}
