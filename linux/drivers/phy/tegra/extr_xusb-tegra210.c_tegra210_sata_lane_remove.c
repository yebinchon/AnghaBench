
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_sata_lane {int dummy; } ;
struct tegra_xusb_lane {int dummy; } ;


 int kfree (struct tegra_xusb_sata_lane*) ;
 struct tegra_xusb_sata_lane* to_sata_lane (struct tegra_xusb_lane*) ;

__attribute__((used)) static void tegra210_sata_lane_remove(struct tegra_xusb_lane *lane)
{
 struct tegra_xusb_sata_lane *sata = to_sata_lane(lane);

 kfree(sata);
}
