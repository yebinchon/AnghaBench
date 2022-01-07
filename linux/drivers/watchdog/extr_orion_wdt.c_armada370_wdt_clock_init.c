
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct orion_watchdog {int clk_rate; int clk; scalar_t__ reg; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ TIMER_CTRL ;
 int WDT_A370_RATIO ;
 int WDT_A370_RATIO_MASK (int ) ;
 int WDT_A370_RATIO_SHIFT ;
 int atomic_io_modify (scalar_t__,int ,int ) ;
 int clk_get (int *,int *) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static int armada370_wdt_clock_init(struct platform_device *pdev,
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


 atomic_io_modify(dev->reg + TIMER_CTRL,
   WDT_A370_RATIO_MASK(WDT_A370_RATIO_SHIFT),
   WDT_A370_RATIO_MASK(WDT_A370_RATIO_SHIFT));

 dev->clk_rate = clk_get_rate(dev->clk) / WDT_A370_RATIO;
 return 0;
}
