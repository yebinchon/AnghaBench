
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ci_hdrc_imx_data {int need_three_clks; void* clk_per; void* clk_ahb; void* clk_ipg; void* clk; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,int,...) ;
 struct ci_hdrc_imx_data* dev_get_drvdata (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int imx_get_clks(struct device *dev)
{
 struct ci_hdrc_imx_data *data = dev_get_drvdata(dev);
 int ret = 0;

 data->clk_ipg = devm_clk_get(dev, "ipg");
 if (IS_ERR(data->clk_ipg)) {

  data->clk = devm_clk_get(dev, ((void*)0));
  if (IS_ERR(data->clk)) {
   ret = PTR_ERR(data->clk);
   dev_err(dev,
    "Failed to get clks, err=%ld,%ld\n",
    PTR_ERR(data->clk), PTR_ERR(data->clk_ipg));
   return ret;
  }
  return ret;
 }

 data->clk_ahb = devm_clk_get(dev, "ahb");
 if (IS_ERR(data->clk_ahb)) {
  ret = PTR_ERR(data->clk_ahb);
  dev_err(dev,
   "Failed to get ahb clock, err=%d\n", ret);
  return ret;
 }

 data->clk_per = devm_clk_get(dev, "per");
 if (IS_ERR(data->clk_per)) {
  ret = PTR_ERR(data->clk_per);
  dev_err(dev,
   "Failed to get per clock, err=%d\n", ret);
  return ret;
 }

 data->need_three_clks = 1;
 return ret;
}
