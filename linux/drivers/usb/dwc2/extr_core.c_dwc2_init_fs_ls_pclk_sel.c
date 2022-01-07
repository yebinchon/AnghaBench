
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ phy_type; scalar_t__ ulpi_fs_ls; } ;
struct TYPE_3__ {scalar_t__ hs_phy_type; scalar_t__ fs_phy_type; } ;
struct dwc2_hsotg {int dev; TYPE_2__ params; TYPE_1__ hw_params; } ;


 scalar_t__ DWC2_PHY_TYPE_PARAM_FS ;
 scalar_t__ GHWCFG2_FS_PHY_TYPE_DEDICATED ;
 scalar_t__ GHWCFG2_HS_PHY_TYPE_ULPI ;
 int HCFG ;
 int HCFG_FSLSPCLKSEL_30_60_MHZ ;
 int HCFG_FSLSPCLKSEL_48_MHZ ;
 int HCFG_FSLSPCLKSEL_MASK ;
 int HCFG_FSLSPCLKSEL_SHIFT ;
 int dev_dbg (int ,char*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

void dwc2_init_fs_ls_pclk_sel(struct dwc2_hsotg *hsotg)
{
 u32 hcfg, val;

 if ((hsotg->hw_params.hs_phy_type == GHWCFG2_HS_PHY_TYPE_ULPI &&
      hsotg->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_DEDICATED &&
      hsotg->params.ulpi_fs_ls) ||
     hsotg->params.phy_type == DWC2_PHY_TYPE_PARAM_FS) {

  val = HCFG_FSLSPCLKSEL_48_MHZ;
 } else {

  val = HCFG_FSLSPCLKSEL_30_60_MHZ;
 }

 dev_dbg(hsotg->dev, "Initializing HCFG.FSLSPClkSel to %08x\n", val);
 hcfg = dwc2_readl(hsotg, HCFG);
 hcfg &= ~HCFG_FSLSPCLKSEL_MASK;
 hcfg |= val << HCFG_FSLSPCLKSEL_SHIFT;
 dwc2_writel(hsotg, hcfg, HCFG);
}
