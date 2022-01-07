
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pipe3 {int refclk; int wkupclk; int dev; int div_clk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int ti_pipe3_enable_clocks(struct ti_pipe3 *phy)
{
 int ret = 0;

 if (!IS_ERR(phy->refclk)) {
  ret = clk_prepare_enable(phy->refclk);
  if (ret) {
   dev_err(phy->dev, "Failed to enable refclk %d\n", ret);
   return ret;
  }
 }

 if (!IS_ERR(phy->wkupclk)) {
  ret = clk_prepare_enable(phy->wkupclk);
  if (ret) {
   dev_err(phy->dev, "Failed to enable wkupclk %d\n", ret);
   goto disable_refclk;
  }
 }

 if (!IS_ERR(phy->div_clk)) {
  ret = clk_prepare_enable(phy->div_clk);
  if (ret) {
   dev_err(phy->dev, "Failed to enable div_clk %d\n", ret);
   goto disable_wkupclk;
  }
 }

 return 0;

disable_wkupclk:
 if (!IS_ERR(phy->wkupclk))
  clk_disable_unprepare(phy->wkupclk);

disable_refclk:
 if (!IS_ERR(phy->refclk))
  clk_disable_unprepare(phy->refclk);

 return ret;
}
