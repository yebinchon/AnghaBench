
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct orion_watchdog {int clk; int clk_rate; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,int *) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static int orion_wdt_clock_init(struct platform_device *pdev,
    struct orion_watchdog *dev)
{
 int ret;

 dev->clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dev->clk))
  return PTR_ERR(dev->clk);
 ret = clk_prepare_enable(dev->clk);
 if (ret) {
  clk_put(dev->clk);
  return ret;
 }

 dev->clk_rate = clk_get_rate(dev->clk);
 return 0;
}
