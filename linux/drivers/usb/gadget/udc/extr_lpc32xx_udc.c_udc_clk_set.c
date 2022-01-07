
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int clocked; int usb_slv_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static void udc_clk_set(struct lpc32xx_udc *udc, int enable)
{
 if (enable != 0) {
  if (udc->clocked)
   return;

  udc->clocked = 1;
  clk_prepare_enable(udc->usb_slv_clk);
 } else {
  if (!udc->clocked)
   return;

  udc->clocked = 0;
  clk_disable_unprepare(udc->usb_slv_clk);
 }
}
