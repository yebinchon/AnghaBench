
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct histb_combphy_priv {int ref_clk; int por_rst; scalar_t__ mmio; } ;


 scalar_t__ COMBPHY_CFG_REG ;
 int COMBPHY_CLKREF_OUT_OEN ;
 int clk_disable_unprepare (int ) ;
 struct histb_combphy_priv* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int reset_control_assert (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int histb_combphy_exit(struct phy *phy)
{
 struct histb_combphy_priv *priv = phy_get_drvdata(phy);
 u32 val;


 val = readl(priv->mmio + COMBPHY_CFG_REG);
 val &= ~COMBPHY_CLKREF_OUT_OEN;
 writel(val, priv->mmio + COMBPHY_CFG_REG);

 reset_control_assert(priv->por_rst);
 clk_disable_unprepare(priv->ref_clk);

 return 0;
}
