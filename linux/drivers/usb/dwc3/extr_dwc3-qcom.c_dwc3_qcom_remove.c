
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dwc3_qcom {int num_clocks; int resets; int * clks; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int of_platform_depopulate (struct device*) ;
 struct dwc3_qcom* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_allow (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int dwc3_qcom_remove(struct platform_device *pdev)
{
 struct dwc3_qcom *qcom = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 int i;

 of_platform_depopulate(dev);

 for (i = qcom->num_clocks - 1; i >= 0; i--) {
  clk_disable_unprepare(qcom->clks[i]);
  clk_put(qcom->clks[i]);
 }
 qcom->num_clocks = 0;

 reset_control_assert(qcom->resets);

 pm_runtime_allow(dev);
 pm_runtime_disable(dev);

 return 0;
}
