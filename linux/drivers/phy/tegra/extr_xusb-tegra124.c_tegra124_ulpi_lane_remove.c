
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_ulpi_lane {int dummy; } ;
struct tegra_xusb_lane {int dummy; } ;


 int kfree (struct tegra_xusb_ulpi_lane*) ;
 struct tegra_xusb_ulpi_lane* to_ulpi_lane (struct tegra_xusb_lane*) ;

__attribute__((used)) static void tegra124_ulpi_lane_remove(struct tegra_xusb_lane *lane)
{
 struct tegra_xusb_ulpi_lane *ulpi = to_ulpi_lane(lane);

 kfree(ulpi);
}
