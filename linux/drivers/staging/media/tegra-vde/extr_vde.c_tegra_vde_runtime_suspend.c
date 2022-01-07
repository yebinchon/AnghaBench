
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int clk; } ;
struct device {int dummy; } ;


 int TEGRA_POWERGATE_VDEC ;
 int clk_disable_unprepare (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra_vde* dev_get_drvdata (struct device*) ;
 int tegra_powergate_power_off (int ) ;

__attribute__((used)) static int tegra_vde_runtime_suspend(struct device *dev)
{
 struct tegra_vde *vde = dev_get_drvdata(dev);
 int err;

 err = tegra_powergate_power_off(TEGRA_POWERGATE_VDEC);
 if (err) {
  dev_err(dev, "Failed to power down HW: %d\n", err);
  return err;
 }

 clk_disable_unprepare(vde->clk);

 return 0;
}
