
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct phy_usb_instance {int dummy; } ;
struct exynos5_usbdrd_phy {int extrefclk; int dev; scalar_t__ reg_phy; } ;


 scalar_t__ EXYNOS5_DRD_PHYCLKRST ;




 unsigned int PHYCLKRST_FSEL_PIPE_MASK ;
 unsigned int PHYCLKRST_MPLL_MULTIPLIER_19200KHZ_REF ;
 unsigned int PHYCLKRST_MPLL_MULTIPLIER_20MHZ_REF ;
 unsigned int PHYCLKRST_MPLL_MULTIPLIER_24MHZ_REF ;
 unsigned int PHYCLKRST_MPLL_MULTIPLIER_50M_REF ;
 unsigned int PHYCLKRST_MPLL_MULTIPLIER_MASK ;
 unsigned int PHYCLKRST_REFCLKSEL_EXT_REFCLK ;
 unsigned int PHYCLKRST_REFCLKSEL_MASK ;
 unsigned int PHYCLKRST_SSC_REFCLKSEL (int) ;
 unsigned int PHYCLKRST_SSC_REFCLKSEL_MASK ;
 int dev_dbg (int ,char*) ;
 unsigned int readl (scalar_t__) ;
 struct exynos5_usbdrd_phy* to_usbdrd_phy (struct phy_usb_instance*) ;

__attribute__((used)) static unsigned int
exynos5_usbdrd_pipe3_set_refclk(struct phy_usb_instance *inst)
{
 u32 reg;
 struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);


 reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);


 reg &= ~PHYCLKRST_REFCLKSEL_MASK;
 reg |= PHYCLKRST_REFCLKSEL_EXT_REFCLK;


 reg &= ~PHYCLKRST_FSEL_PIPE_MASK |
  PHYCLKRST_MPLL_MULTIPLIER_MASK |
  PHYCLKRST_SSC_REFCLKSEL_MASK;
 switch (phy_drd->extrefclk) {
 case 128:
  reg |= (PHYCLKRST_MPLL_MULTIPLIER_50M_REF |
   PHYCLKRST_SSC_REFCLKSEL(0x00));
  break;
 case 129:
  reg |= (PHYCLKRST_MPLL_MULTIPLIER_24MHZ_REF |
   PHYCLKRST_SSC_REFCLKSEL(0x88));
  break;
 case 130:
  reg |= (PHYCLKRST_MPLL_MULTIPLIER_20MHZ_REF |
   PHYCLKRST_SSC_REFCLKSEL(0x00));
  break;
 case 131:
  reg |= (PHYCLKRST_MPLL_MULTIPLIER_19200KHZ_REF |
   PHYCLKRST_SSC_REFCLKSEL(0x88));
  break;
 default:
  dev_dbg(phy_drd->dev, "unsupported ref clk\n");
  break;
 }

 return reg;
}
