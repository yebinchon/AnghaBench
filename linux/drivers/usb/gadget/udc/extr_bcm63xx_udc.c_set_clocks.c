
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_udc {int usbh_clk; int usbd_clk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void set_clocks(struct bcm63xx_udc *udc, bool is_enabled)
{
 if (is_enabled) {
  clk_enable(udc->usbh_clk);
  clk_enable(udc->usbd_clk);
  udelay(10);
 } else {
  clk_disable(udc->usbd_clk);
  clk_disable(udc->usbh_clk);
 }
}
