
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {scalar_t__ current_dr_role; scalar_t__ revision; int usb2_generic_phy; int usb3_generic_phy; int regs; int usb3_phy; int usb2_phy; } ;


 int DWC3_DCTL ;
 int DWC3_DCTL_CSFTRST ;
 scalar_t__ DWC3_GCTL_PRTCAP_HOST ;
 scalar_t__ DWC3_USB31_REVISION_180A ;
 scalar_t__ DWC3_USB31_REVISION_190A ;
 int ETIMEDOUT ;
 scalar_t__ dwc3_is_usb31 (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int msleep (int) ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int udelay (int) ;
 int usb_phy_init (int ) ;

__attribute__((used)) static int dwc3_core_soft_reset(struct dwc3 *dwc)
{
 u32 reg;
 int retries = 1000;
 int ret;

 usb_phy_init(dwc->usb2_phy);
 usb_phy_init(dwc->usb3_phy);
 ret = phy_init(dwc->usb2_generic_phy);
 if (ret < 0)
  return ret;

 ret = phy_init(dwc->usb3_generic_phy);
 if (ret < 0) {
  phy_exit(dwc->usb2_generic_phy);
  return ret;
 }






 if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_HOST)
  return 0;

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 reg |= DWC3_DCTL_CSFTRST;
 dwc3_writel(dwc->regs, DWC3_DCTL, reg);







 if (dwc3_is_usb31(dwc) && dwc->revision >= DWC3_USB31_REVISION_190A)
  retries = 10;

 do {
  reg = dwc3_readl(dwc->regs, DWC3_DCTL);
  if (!(reg & DWC3_DCTL_CSFTRST))
   goto done;

  if (dwc3_is_usb31(dwc) &&
      dwc->revision >= DWC3_USB31_REVISION_190A)
   msleep(20);
  else
   udelay(1);
 } while (--retries);

 phy_exit(dwc->usb3_generic_phy);
 phy_exit(dwc->usb2_generic_phy);

 return -ETIMEDOUT;

done:





 if (dwc3_is_usb31(dwc) && dwc->revision <= DWC3_USB31_REVISION_180A)
  msleep(50);

 return 0;
}
