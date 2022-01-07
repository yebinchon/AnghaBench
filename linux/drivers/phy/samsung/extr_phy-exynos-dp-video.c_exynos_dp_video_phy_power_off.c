
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct exynos_dp_video_phy {TYPE_1__* drvdata; int regs; } ;
struct TYPE_2__ {int phy_ctrl_offset; } ;


 int EXYNOS4_PHY_ENABLE ;
 struct exynos_dp_video_phy* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int exynos_dp_video_phy_power_off(struct phy *phy)
{
 struct exynos_dp_video_phy *state = phy_get_drvdata(phy);


 return regmap_update_bits(state->regs, state->drvdata->phy_ctrl_offset,
      EXYNOS4_PHY_ENABLE, 0);
}
