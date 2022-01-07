
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct omap_usb {int flags; int phy_base; } ;


 int OMAP_USB2_CALIBRATE_FALSE_DISCONNECT ;
 int USB2PHY_ANA_CONFIG1 ;
 int USB2PHY_DISCON_BYP_LATCH ;
 int omap_usb2_enable_clocks (struct omap_usb*) ;
 int omap_usb_readl (int ,int ) ;
 int omap_usb_writel (int ,int ,int ) ;
 struct omap_usb* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int omap_usb_init(struct phy *x)
{
 struct omap_usb *phy = phy_get_drvdata(x);
 u32 val;

 omap_usb2_enable_clocks(phy);

 if (phy->flags & OMAP_USB2_CALIBRATE_FALSE_DISCONNECT) {
  val = omap_usb_readl(phy->phy_base, USB2PHY_ANA_CONFIG1);
  val |= USB2PHY_DISCON_BYP_LATCH;
  omap_usb_writel(phy->phy_base, USB2PHY_ANA_CONFIG1, val);
 }

 return 0;
}
