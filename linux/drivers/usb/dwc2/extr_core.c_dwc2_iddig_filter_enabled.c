
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_hsotg {int dummy; } ;


 scalar_t__ DWC2_CORE_REV_3_10a ;
 int GHWCFG4 ;
 scalar_t__ GHWCFG4_IDDIG_FILT_EN ;
 int GOTGCTL ;
 scalar_t__ GOTGCTL_DBNCE_FLTR_BYPASS ;
 int GSNPSID ;
 int dwc2_hw_is_otg (struct dwc2_hsotg*) ;
 scalar_t__ dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static bool dwc2_iddig_filter_enabled(struct dwc2_hsotg *hsotg)
{
 u32 gsnpsid;
 u32 ghwcfg4;

 if (!dwc2_hw_is_otg(hsotg))
  return 0;


 ghwcfg4 = dwc2_readl(hsotg, GHWCFG4);
 if (!(ghwcfg4 & GHWCFG4_IDDIG_FILT_EN))
  return 0;





 gsnpsid = dwc2_readl(hsotg, GSNPSID);
 if (gsnpsid >= DWC2_CORE_REV_3_10a) {
  u32 gotgctl = dwc2_readl(hsotg, GOTGCTL);

  if (gotgctl & GOTGCTL_DBNCE_FLTR_BYPASS)
   return 0;
 }

 return 1;
}
