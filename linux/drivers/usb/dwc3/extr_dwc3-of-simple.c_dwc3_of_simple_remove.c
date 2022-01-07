
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dwc3_of_simple {int resets; int pulse_resets; scalar_t__ num_clocks; int clks; } ;


 int clk_bulk_disable_unprepare (scalar_t__,int ) ;
 int clk_bulk_put_all (scalar_t__,int ) ;
 int of_platform_depopulate (struct device*) ;
 struct dwc3_of_simple* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int reset_control_assert (int ) ;
 int reset_control_put (int ) ;

__attribute__((used)) static int dwc3_of_simple_remove(struct platform_device *pdev)
{
 struct dwc3_of_simple *simple = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;

 of_platform_depopulate(dev);

 clk_bulk_disable_unprepare(simple->num_clocks, simple->clks);
 clk_bulk_put_all(simple->num_clocks, simple->clks);
 simple->num_clocks = 0;

 if (!simple->pulse_resets)
  reset_control_assert(simple->resets);

 reset_control_put(simple->resets);

 pm_runtime_disable(dev);
 pm_runtime_put_noidle(dev);
 pm_runtime_set_suspended(dev);

 return 0;
}
