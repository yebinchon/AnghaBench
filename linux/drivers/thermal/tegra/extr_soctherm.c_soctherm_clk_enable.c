
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_soctherm {int reset; int clock_soctherm; int clock_tsensor; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct tegra_soctherm* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int soctherm_clk_enable(struct platform_device *pdev, bool enable)
{
 struct tegra_soctherm *tegra = platform_get_drvdata(pdev);
 int err;

 if (!tegra->clock_soctherm || !tegra->clock_tsensor)
  return -EINVAL;

 reset_control_assert(tegra->reset);

 if (enable) {
  err = clk_prepare_enable(tegra->clock_soctherm);
  if (err) {
   reset_control_deassert(tegra->reset);
   return err;
  }

  err = clk_prepare_enable(tegra->clock_tsensor);
  if (err) {
   clk_disable_unprepare(tegra->clock_soctherm);
   reset_control_deassert(tegra->reset);
   return err;
  }
 } else {
  clk_disable_unprepare(tegra->clock_tsensor);
  clk_disable_unprepare(tegra->clock_soctherm);
 }

 reset_control_deassert(tegra->reset);

 return 0;
}
