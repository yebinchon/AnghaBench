
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ phy_type; scalar_t__ ulpi_fs_ls; } ;
struct TYPE_3__ {scalar_t__ hs_phy_type; scalar_t__ fs_phy_type; } ;
struct dwc2_hsotg {int dev; TYPE_2__ params; TYPE_1__ hw_params; } ;


 scalar_t__ DWC2_PHY_TYPE_PARAM_FS ;
 scalar_t__ DWC2_SPEED_PARAM_FULL ;
 scalar_t__ DWC2_SPEED_PARAM_LOW ;
 scalar_t__ GHWCFG2_FS_PHY_TYPE_DEDICATED ;
 scalar_t__ GHWCFG2_HS_PHY_TYPE_ULPI ;
 int GUSBCFG ;
 int GUSBCFG_ULPI_CLK_SUSP_M ;
 int GUSBCFG_ULPI_FS_LS ;
 int dev_dbg (int ,char*) ;
 int dwc2_fs_phy_init (struct dwc2_hsotg*,int) ;
 int dwc2_hs_phy_init (struct dwc2_hsotg*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

int dwc2_phy_init(struct dwc2_hsotg *hsotg, bool select_phy)
{
 u32 usbcfg;
 int retval = 0;

 if ((hsotg->params.speed == DWC2_SPEED_PARAM_FULL ||
      hsotg->params.speed == DWC2_SPEED_PARAM_LOW) &&
     hsotg->params.phy_type == DWC2_PHY_TYPE_PARAM_FS) {

  retval = dwc2_fs_phy_init(hsotg, select_phy);
  if (retval)
   return retval;
 } else {

  retval = dwc2_hs_phy_init(hsotg, select_phy);
  if (retval)
   return retval;
 }

 if (hsotg->hw_params.hs_phy_type == GHWCFG2_HS_PHY_TYPE_ULPI &&
     hsotg->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_DEDICATED &&
     hsotg->params.ulpi_fs_ls) {
  dev_dbg(hsotg->dev, "Setting ULPI FSLS\n");
  usbcfg = dwc2_readl(hsotg, GUSBCFG);
  usbcfg |= GUSBCFG_ULPI_FS_LS;
  usbcfg |= GUSBCFG_ULPI_CLK_SUSP_M;
  dwc2_writel(hsotg, usbcfg, GUSBCFG);
 } else {
  usbcfg = dwc2_readl(hsotg, GUSBCFG);
  usbcfg &= ~GUSBCFG_ULPI_FS_LS;
  usbcfg &= ~GUSBCFG_ULPI_CLK_SUSP_M;
  dwc2_writel(hsotg, usbcfg, GUSBCFG);
 }

 return retval;
}
