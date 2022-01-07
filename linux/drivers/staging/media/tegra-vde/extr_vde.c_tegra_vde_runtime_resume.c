
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int rst; int clk; } ;
struct device {int dummy; } ;


 int TEGRA_POWERGATE_VDEC ;
 int dev_err (struct device*,char*,int) ;
 struct tegra_vde* dev_get_drvdata (struct device*) ;
 int tegra_powergate_sequence_power_up (int ,int ,int ) ;

__attribute__((used)) static int tegra_vde_runtime_resume(struct device *dev)
{
 struct tegra_vde *vde = dev_get_drvdata(dev);
 int err;

 err = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_VDEC,
      vde->clk, vde->rst);
 if (err) {
  dev_err(dev, "Failed to power up HW : %d\n", err);
  return err;
 }

 return 0;
}
