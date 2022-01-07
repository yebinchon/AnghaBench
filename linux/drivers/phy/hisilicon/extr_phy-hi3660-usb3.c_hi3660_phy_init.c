
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct hi3660_priv {int eye_diagram_param; int dev; int otg_bc; int peri_crg; int pctrl; } ;


 int IP_RST_USB3OTG ;
 int IP_RST_USB3OTGPHY_POR ;
 int PCTRL_PERI_CTRL3 ;
 int PCTRL_PERI_CTRL3_MSK_START ;
 int PERI_CRG_ISODIS ;
 int PERI_CRG_RSTDIS4 ;
 int PERI_CRG_RSTEN4 ;
 int REF_SSP_EN ;
 int SC_USB3PHY_ABB_GT_EN ;
 int USBOTG3CTRL2_POWERDOWN_HSP ;
 int USBOTG3CTRL2_POWERDOWN_SSP ;
 int USBOTG3_CTRL0 ;
 int USBOTG3_CTRL2 ;
 int USBOTG3_CTRL3 ;
 int USBOTG3_CTRL3_VBUSVLDEXT ;
 int USBOTG3_CTRL3_VBUSVLDEXTSEL ;
 int USBOTG3_CTRL4 ;
 int USBOTG3_CTRL7 ;
 int USB_REFCLK_ISO_EN ;
 int USB_TCXO_EN ;
 int dev_err (int ,char*,int) ;
 struct hi3660_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hi3660_phy_init(struct phy *phy)
{
 struct hi3660_priv *priv = phy_get_drvdata(phy);
 u32 val, mask;
 int ret;


 ret = regmap_write(priv->peri_crg, PERI_CRG_ISODIS, USB_REFCLK_ISO_EN);
 if (ret)
  goto out;


 val = USB_TCXO_EN | (USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
 ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3, val);
 if (ret)
  goto out;


 val = IP_RST_USB3OTGPHY_POR | IP_RST_USB3OTG;
 ret = regmap_write(priv->peri_crg, PERI_CRG_RSTEN4, val);
 if (ret)
  goto out;


 val = SC_USB3PHY_ABB_GT_EN;
 mask = val;
 ret = regmap_update_bits(priv->otg_bc, USBOTG3_CTRL0, mask, val);
 if (ret)
  goto out;

 val = REF_SSP_EN;
 mask = val;
 ret = regmap_update_bits(priv->otg_bc, USBOTG3_CTRL7, mask, val);
 if (ret)
  goto out;


 mask = USBOTG3CTRL2_POWERDOWN_HSP | USBOTG3CTRL2_POWERDOWN_SSP;
 ret = regmap_update_bits(priv->otg_bc, USBOTG3_CTRL2, mask, 0);
 if (ret)
  goto out;


 usleep_range(100, 120);


 val = IP_RST_USB3OTGPHY_POR | IP_RST_USB3OTG;
 ret = regmap_write(priv->peri_crg, PERI_CRG_RSTDIS4, val);
 if (ret)
  goto out;


 usleep_range(10000, 15000);


 val = USBOTG3_CTRL3_VBUSVLDEXT | USBOTG3_CTRL3_VBUSVLDEXTSEL;
 mask = val;
 ret = regmap_update_bits(priv->otg_bc, USBOTG3_CTRL3, mask, val);
 if (ret)
  goto out;


 usleep_range(100, 120);

 ret = regmap_write(priv->otg_bc, USBOTG3_CTRL4,
   priv->eye_diagram_param);
 if (ret)
  goto out;

 return 0;
out:
 dev_err(priv->dev, "failed to init phy ret: %d\n", ret);
 return ret;
}
