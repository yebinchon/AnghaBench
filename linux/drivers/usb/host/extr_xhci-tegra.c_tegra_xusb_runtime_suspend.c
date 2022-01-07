
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb {int supplies; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int num_supplies; } ;


 struct tegra_xusb* dev_get_drvdata (struct device*) ;
 int regulator_bulk_disable (int ,int ) ;
 int tegra_xusb_clk_disable (struct tegra_xusb*) ;
 int tegra_xusb_phy_disable (struct tegra_xusb*) ;

__attribute__((used)) static int tegra_xusb_runtime_suspend(struct device *dev)
{
 struct tegra_xusb *tegra = dev_get_drvdata(dev);

 tegra_xusb_phy_disable(tegra);
 regulator_bulk_disable(tegra->soc->num_supplies, tegra->supplies);
 tegra_xusb_clk_disable(tegra);

 return 0;
}
