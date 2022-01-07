
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct orion_watchdog {int clk; int clk_rate; scalar_t__ reg; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TIMER1_FIXED_ENABLE_BIT ;
 scalar_t__ TIMER_CTRL ;
 int WDT_AXP_FIXED_ENABLE_BIT ;
 int atomic_io_modify (scalar_t__,int,int) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int of_clk_get_by_name (int ,char*) ;

__attribute__((used)) static int armadaxp_wdt_clock_init(struct platform_device *pdev,
       struct orion_watchdog *dev)
{
 int ret;
 u32 val;

 dev->clk = of_clk_get_by_name(pdev->dev.of_node, "fixed");
 if (IS_ERR(dev->clk))
  return PTR_ERR(dev->clk);
 ret = clk_prepare_enable(dev->clk);
 if (ret) {
  clk_put(dev->clk);
  return ret;
 }


 val = WDT_AXP_FIXED_ENABLE_BIT | TIMER1_FIXED_ENABLE_BIT;
 atomic_io_modify(dev->reg + TIMER_CTRL, val, val);

 dev->clk_rate = clk_get_rate(dev->clk);
 return 0;
}
