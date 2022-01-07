
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct rockchip_typec_phy {scalar_t__ base; } ;
struct TYPE_3__ {int value; scalar_t__ addr; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ DP_CLK_CTL ;
 int DP_PLL_CLOCK_ENABLE ;
 int DP_PLL_DATA_RATE_RBR ;
 int DP_PLL_ENABLE ;
 TYPE_1__* dp_pll_cfg ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tcphy_cfg_dp_pll(struct rockchip_typec_phy *tcphy)
{
 u32 i;


 writel(DP_PLL_CLOCK_ENABLE | DP_PLL_ENABLE | DP_PLL_DATA_RATE_RBR,
        tcphy->base + DP_CLK_CTL);


 for (i = 0; i < ARRAY_SIZE(dp_pll_cfg); i++)
  writel(dp_pll_cfg[i].value, tcphy->base + dp_pll_cfg[i].addr);
}
