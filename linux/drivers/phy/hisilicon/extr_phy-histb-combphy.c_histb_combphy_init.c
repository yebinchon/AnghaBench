
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct histb_combphy_priv {scalar_t__ mmio; int por_rst; int ref_clk; } ;


 int COMBPHY_BYPASS_CODEC ;
 scalar_t__ COMBPHY_CFG_REG ;
 int COMBPHY_CLKREF_OUT_OEN ;
 int clk_prepare_enable (int ) ;
 int histb_combphy_set_mode (struct histb_combphy_priv*) ;
 int mdelay (int) ;
 int nano_register_write (struct histb_combphy_priv*,int,int) ;
 struct histb_combphy_priv* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int reset_control_deassert (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int histb_combphy_init(struct phy *phy)
{
 struct histb_combphy_priv *priv = phy_get_drvdata(phy);
 u32 val;
 int ret;

 ret = histb_combphy_set_mode(priv);
 if (ret)
  return ret;


 val = readl(priv->mmio + COMBPHY_CFG_REG);
 val &= ~COMBPHY_BYPASS_CODEC;
 writel(val, priv->mmio + COMBPHY_CFG_REG);

 ret = clk_prepare_enable(priv->ref_clk);
 if (ret)
  return ret;

 reset_control_deassert(priv->por_rst);


 val = readl(priv->mmio + COMBPHY_CFG_REG);
 val |= COMBPHY_CLKREF_OUT_OEN;
 writel(val, priv->mmio + COMBPHY_CFG_REG);


 mdelay(5);


 nano_register_write(priv, 0x1, 0x8);
 nano_register_write(priv, 0xc, 0x9);
 nano_register_write(priv, 0x1a, 0x4);

 return 0;
}
