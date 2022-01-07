
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct hi3660_priv {int dev; int pctrl; int peri_crg; } ;


 int IP_RST_USB3OTGPHY_POR ;
 int PCTRL_PERI_CTRL3 ;
 int PCTRL_PERI_CTRL3_MSK_START ;
 int PERI_CRG_RSTEN4 ;
 int USB_TCXO_EN ;
 int dev_err (int ,char*,int) ;
 struct hi3660_priv* phy_get_drvdata (struct phy*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int hi3660_phy_exit(struct phy *phy)
{
 struct hi3660_priv *priv = phy_get_drvdata(phy);
 u32 val;
 int ret;


 val = IP_RST_USB3OTGPHY_POR;
 ret = regmap_write(priv->peri_crg, PERI_CRG_RSTEN4, val);
 if (ret)
  goto out;


 val = USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START;
 ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3, val);
 if (ret)
  goto out;

 return 0;
out:
 dev_err(priv->dev, "failed to exit phy ret: %d\n", ret);
 return ret;
}
