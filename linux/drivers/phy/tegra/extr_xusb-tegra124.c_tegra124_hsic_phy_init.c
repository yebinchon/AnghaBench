
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_lane {TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int padctl; } ;


 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int tegra124_xusb_padctl_enable (int ) ;

__attribute__((used)) static int tegra124_hsic_phy_init(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);

 return tegra124_xusb_padctl_enable(lane->pad->padctl);
}
