
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_iwdg {void* clk_lsi; int rate; void* clk_pclk; TYPE_1__* data; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ has_pclk; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,void*) ;
 void* devm_clk_get (struct device*,char*) ;
 int stm32_clk_disable_unprepare ;

__attribute__((used)) static int stm32_iwdg_clk_init(struct platform_device *pdev,
          struct stm32_iwdg *wdt)
{
 struct device *dev = &pdev->dev;
 u32 ret;

 wdt->clk_lsi = devm_clk_get(dev, "lsi");
 if (IS_ERR(wdt->clk_lsi)) {
  dev_err(dev, "Unable to get lsi clock\n");
  return PTR_ERR(wdt->clk_lsi);
 }


 if (wdt->data->has_pclk) {
  wdt->clk_pclk = devm_clk_get(dev, "pclk");
  if (IS_ERR(wdt->clk_pclk)) {
   dev_err(dev, "Unable to get pclk clock\n");
   return PTR_ERR(wdt->clk_pclk);
  }

  ret = clk_prepare_enable(wdt->clk_pclk);
  if (ret) {
   dev_err(dev, "Unable to prepare pclk clock\n");
   return ret;
  }
  ret = devm_add_action_or_reset(dev,
            stm32_clk_disable_unprepare,
            wdt->clk_pclk);
  if (ret)
   return ret;
 }

 ret = clk_prepare_enable(wdt->clk_lsi);
 if (ret) {
  dev_err(dev, "Unable to prepare lsi clock\n");
  return ret;
 }
 ret = devm_add_action_or_reset(dev, stm32_clk_disable_unprepare,
           wdt->clk_lsi);
 if (ret)
  return ret;

 wdt->rate = clk_get_rate(wdt->clk_lsi);

 return 0;
}
