
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_udc {int usbh_clk; int usbd_clk; } ;


 int clk_put (int ) ;
 int iudma_uninit (struct bcm63xx_udc*) ;
 int set_clocks (struct bcm63xx_udc*,int) ;

__attribute__((used)) static void bcm63xx_uninit_udc_hw(struct bcm63xx_udc *udc)
{
 set_clocks(udc, 1);
 iudma_uninit(udc);
 set_clocks(udc, 0);

 clk_put(udc->usbd_clk);
 clk_put(udc->usbh_clk);
}
