
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_generic {int vcc; int clk; int gpiod_reset; } ;
struct usb_phy {int dev; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*) ;
 struct usb_phy_generic* dev_get_drvdata (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 scalar_t__ regulator_disable (int ) ;

void usb_gen_phy_shutdown(struct usb_phy *phy)
{
 struct usb_phy_generic *nop = dev_get_drvdata(phy->dev);

 gpiod_set_value_cansleep(nop->gpiod_reset, 1);

 if (!IS_ERR(nop->clk))
  clk_disable_unprepare(nop->clk);

 if (!IS_ERR(nop->vcc)) {
  if (regulator_disable(nop->vcc))
   dev_err(phy->dev, "Failed to disable power\n");
 }
}
