
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ fs_phy_type; } ;
struct dwc2_hsotg {TYPE_1__ hw_params; } ;


 scalar_t__ GHWCFG2_FS_PHY_TYPE_DEDICATED ;
 scalar_t__ GHWCFG2_FS_PHY_TYPE_SHARED_ULPI ;
 scalar_t__ GHWCFG2_FS_PHY_TYPE_SHARED_UTMI ;
 int GUSBCFG ;
 int GUSBCFG_PHYIF16 ;
 int GUSBCFG_PHYSEL ;
 int GUSBCFG_PHY_LP_CLK_SEL ;
 int GUSBCFG_ULPI_UTMI_SEL ;
 int HPRT0 ;
 scalar_t__ HPRT0_SPD_HIGH_SPEED ;
 int HPRT0_SPD_MASK ;
 scalar_t__ HPRT0_SPD_SHIFT ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

u32 dwc2_calc_frame_interval(struct dwc2_hsotg *hsotg)
{
 u32 usbcfg;
 u32 hprt0;
 int clock = 60;

 usbcfg = dwc2_readl(hsotg, GUSBCFG);
 hprt0 = dwc2_readl(hsotg, HPRT0);

 if (!(usbcfg & GUSBCFG_PHYSEL) && (usbcfg & GUSBCFG_ULPI_UTMI_SEL) &&
     !(usbcfg & GUSBCFG_PHYIF16))
  clock = 60;
 if ((usbcfg & GUSBCFG_PHYSEL) && hsotg->hw_params.fs_phy_type ==
     GHWCFG2_FS_PHY_TYPE_SHARED_ULPI)
  clock = 48;
 if (!(usbcfg & GUSBCFG_PHY_LP_CLK_SEL) && !(usbcfg & GUSBCFG_PHYSEL) &&
     !(usbcfg & GUSBCFG_ULPI_UTMI_SEL) && (usbcfg & GUSBCFG_PHYIF16))
  clock = 30;
 if (!(usbcfg & GUSBCFG_PHY_LP_CLK_SEL) && !(usbcfg & GUSBCFG_PHYSEL) &&
     !(usbcfg & GUSBCFG_ULPI_UTMI_SEL) && !(usbcfg & GUSBCFG_PHYIF16))
  clock = 60;
 if ((usbcfg & GUSBCFG_PHY_LP_CLK_SEL) && !(usbcfg & GUSBCFG_PHYSEL) &&
     !(usbcfg & GUSBCFG_ULPI_UTMI_SEL) && (usbcfg & GUSBCFG_PHYIF16))
  clock = 48;
 if ((usbcfg & GUSBCFG_PHYSEL) && !(usbcfg & GUSBCFG_PHYIF16) &&
     hsotg->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_SHARED_UTMI)
  clock = 48;
 if ((usbcfg & GUSBCFG_PHYSEL) &&
     hsotg->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_DEDICATED)
  clock = 48;

 if ((hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT == HPRT0_SPD_HIGH_SPEED)

  return 125 * clock - 1;


 return 1000 * clock - 1;
}
