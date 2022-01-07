
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_phy {int pipe_reset; int pipe_clk; scalar_t__ base; } ;
struct phy {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ PCIE2_PHY_RESET_CTRL ;
 int clk_disable_unprepare (int ) ;
 struct qcom_phy* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int reset_control_assert (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int qcom_pcie2_phy_power_off(struct phy *phy)
{
 struct qcom_phy *qphy = phy_get_drvdata(phy);
 u32 val;

 val = readl(qphy->base + PCIE2_PHY_RESET_CTRL);
 val |= BIT(0);
 writel(val, qphy->base + PCIE2_PHY_RESET_CTRL);

 clk_disable_unprepare(qphy->pipe_clk);
 reset_control_assert(qphy->pipe_reset);

 return 0;
}
