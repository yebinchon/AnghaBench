
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dev; } ;


 int GUSBCFG ;
 int GUSBCFG_FORCEDEVMODE ;
 int GUSBCFG_FORCEHOSTMODE ;
 int dev_dbg (int ,char*) ;
 int dwc2_hw_is_otg (struct dwc2_hsotg*) ;
 scalar_t__ dwc2_iddig_filter_enabled (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void dwc2_clear_force_mode(struct dwc2_hsotg *hsotg)
{
 u32 gusbcfg;

 if (!dwc2_hw_is_otg(hsotg))
  return;

 dev_dbg(hsotg->dev, "Clearing force mode bits\n");

 gusbcfg = dwc2_readl(hsotg, GUSBCFG);
 gusbcfg &= ~GUSBCFG_FORCEHOSTMODE;
 gusbcfg &= ~GUSBCFG_FORCEDEVMODE;
 dwc2_writel(hsotg, gusbcfg, GUSBCFG);

 if (dwc2_iddig_filter_enabled(hsotg))
  msleep(100);
}
