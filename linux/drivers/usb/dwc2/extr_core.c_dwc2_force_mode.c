
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {scalar_t__ dr_mode; int dev; } ;


 int GUSBCFG ;
 int GUSBCFG_FORCEDEVMODE ;
 int GUSBCFG_FORCEHOSTMODE ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int ,char*,char*) ;
 int dwc2_hw_is_otg (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_wait_for_mode (struct dwc2_hsotg*,int) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

void dwc2_force_mode(struct dwc2_hsotg *hsotg, bool host)
{
 u32 gusbcfg;
 u32 set;
 u32 clear;

 dev_dbg(hsotg->dev, "Forcing mode to %s\n", host ? "host" : "device");




 if (!dwc2_hw_is_otg(hsotg))
  return;





 if (WARN_ON(host && hsotg->dr_mode == USB_DR_MODE_PERIPHERAL))
  return;

 if (WARN_ON(!host && hsotg->dr_mode == USB_DR_MODE_HOST))
  return;

 gusbcfg = dwc2_readl(hsotg, GUSBCFG);

 set = host ? GUSBCFG_FORCEHOSTMODE : GUSBCFG_FORCEDEVMODE;
 clear = host ? GUSBCFG_FORCEDEVMODE : GUSBCFG_FORCEHOSTMODE;

 gusbcfg &= ~clear;
 gusbcfg |= set;
 dwc2_writel(hsotg, gusbcfg, GUSBCFG);

 dwc2_wait_for_mode(hsotg, host);
 return;
}
