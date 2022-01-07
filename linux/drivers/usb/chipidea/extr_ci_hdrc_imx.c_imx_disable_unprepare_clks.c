
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ci_hdrc_imx_data {int clk; int clk_ipg; int clk_ahb; int clk_per; scalar_t__ need_three_clks; } ;


 int clk_disable_unprepare (int ) ;
 struct ci_hdrc_imx_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void imx_disable_unprepare_clks(struct device *dev)
{
 struct ci_hdrc_imx_data *data = dev_get_drvdata(dev);

 if (data->need_three_clks) {
  clk_disable_unprepare(data->clk_per);
  clk_disable_unprepare(data->clk_ahb);
  clk_disable_unprepare(data->clk_ipg);
 } else {
  clk_disable_unprepare(data->clk);
 }
}
