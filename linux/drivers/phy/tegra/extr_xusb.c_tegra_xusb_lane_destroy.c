
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_lane {TYPE_2__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* remove ) (struct tegra_xusb_lane*) ;} ;


 int phy_destroy (struct phy*) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int stub1 (struct tegra_xusb_lane*) ;

__attribute__((used)) static void tegra_xusb_lane_destroy(struct phy *phy)
{
 if (phy) {
  struct tegra_xusb_lane *lane = phy_get_drvdata(phy);

  lane->pad->ops->remove(lane);
  phy_destroy(phy);
 }
}
