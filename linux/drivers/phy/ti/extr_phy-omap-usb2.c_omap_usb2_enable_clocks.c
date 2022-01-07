
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_usb {int wkupclk; int dev; int optclk; } ;


 int IS_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int omap_usb2_enable_clocks(struct omap_usb *phy)
{
 int ret;

 ret = clk_prepare_enable(phy->wkupclk);
 if (ret < 0) {
  dev_err(phy->dev, "Failed to enable wkupclk %d\n", ret);
  goto err0;
 }

 if (!IS_ERR(phy->optclk)) {
  ret = clk_prepare_enable(phy->optclk);
  if (ret < 0) {
   dev_err(phy->dev, "Failed to enable optclk %d\n", ret);
   goto err1;
  }
 }

 return 0;

err1:
 clk_disable(phy->wkupclk);

err0:
 return ret;
}
