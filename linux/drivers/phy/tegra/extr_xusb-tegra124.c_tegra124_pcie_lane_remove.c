
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_pcie_lane {int dummy; } ;
struct tegra_xusb_lane {int dummy; } ;


 int kfree (struct tegra_xusb_pcie_lane*) ;
 struct tegra_xusb_pcie_lane* to_pcie_lane (struct tegra_xusb_lane*) ;

__attribute__((used)) static void tegra124_pcie_lane_remove(struct tegra_xusb_lane *lane)
{
 struct tegra_xusb_pcie_lane *pcie = to_pcie_lane(lane);

 kfree(pcie);
}
