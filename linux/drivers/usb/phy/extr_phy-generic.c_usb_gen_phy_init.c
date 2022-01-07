
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_generic {int clk; int vcc; } ;
struct usb_phy {int dev; } ;


 int IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct usb_phy_generic* dev_get_drvdata (int ) ;
 int nop_reset (struct usb_phy_generic*) ;
 scalar_t__ regulator_enable (int ) ;

int usb_gen_phy_init(struct usb_phy *phy)
{
 struct usb_phy_generic *nop = dev_get_drvdata(phy->dev);
 int ret;

 if (!IS_ERR(nop->vcc)) {
  if (regulator_enable(nop->vcc))
   dev_err(phy->dev, "Failed to enable power\n");
 }

 if (!IS_ERR(nop->clk)) {
  ret = clk_prepare_enable(nop->clk);
  if (ret)
   return ret;
 }

 nop_reset(nop);

 return 0;
}
