
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_berlin_priv {int clk; int lock; scalar_t__ base; } ;
struct phy_berlin_desc {int power_bit; } ;
struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;


 int CONTROL_REGISTER ;
 scalar_t__ HOST_VSA_ADDR ;
 scalar_t__ HOST_VSA_DATA ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct phy_berlin_priv* dev_get_drvdata (int ) ;
 struct phy_berlin_desc* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int phy_berlin_sata_power_off(struct phy *phy)
{
 struct phy_berlin_desc *desc = phy_get_drvdata(phy);
 struct phy_berlin_priv *priv = dev_get_drvdata(phy->dev.parent);
 u32 regval;

 clk_prepare_enable(priv->clk);

 spin_lock(&priv->lock);


 writel(CONTROL_REGISTER, priv->base + HOST_VSA_ADDR);
 regval = readl(priv->base + HOST_VSA_DATA);
 regval |= desc->power_bit;
 writel(regval, priv->base + HOST_VSA_DATA);

 spin_unlock(&priv->lock);

 clk_disable_unprepare(priv->clk);

 return 0;
}
