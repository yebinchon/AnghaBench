
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_generic {int clk; } ;
struct usb_phy {int dev; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct usb_phy_generic* dev_get_drvdata (int ) ;

__attribute__((used)) static int nop_set_suspend(struct usb_phy *x, int suspend)
{
 struct usb_phy_generic *nop = dev_get_drvdata(x->dev);

 if (!IS_ERR(nop->clk)) {
  if (suspend)
   clk_disable_unprepare(nop->clk);
  else
   clk_prepare_enable(nop->clk);
 }

 return 0;
}
