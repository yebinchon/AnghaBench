
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dwc3_exynos {int num_clks; size_t suspend_clk_idx; int vdd10; int vdd33; int * clks; } ;


 int clk_disable_unprepare (int ) ;
 int device_for_each_child (int *,int *,int ) ;
 int dwc3_exynos_remove_child ;
 struct dwc3_exynos* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int dwc3_exynos_remove(struct platform_device *pdev)
{
 struct dwc3_exynos *exynos = platform_get_drvdata(pdev);
 int i;

 device_for_each_child(&pdev->dev, ((void*)0), dwc3_exynos_remove_child);

 for (i = exynos->num_clks - 1; i >= 0; i--)
  clk_disable_unprepare(exynos->clks[i]);

 if (exynos->suspend_clk_idx >= 0)
  clk_disable_unprepare(exynos->clks[exynos->suspend_clk_idx]);

 regulator_disable(exynos->vdd33);
 regulator_disable(exynos->vdd10);

 return 0;
}
