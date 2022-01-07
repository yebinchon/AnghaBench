
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {scalar_t__ lx_state; int dev; } ;


 scalar_t__ DWC2_L0 ;
 scalar_t__ DWC2_L1 ;
 int GLPMCFG ;
 int GLPMCFG_COREL1RES_MASK ;
 int GLPMCFG_ENBLSLPM ;
 int GLPMCFG_HIRD_THRES_EN ;
 int GLPMCFG_L1RESUMEOK ;
 int GLPMCFG_SLPSTS ;
 int call_gadget (struct dwc2_hsotg*,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dwc2_gadget_init_lpm (struct dwc2_hsotg*) ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int resume ;
 int udelay (int) ;

__attribute__((used)) static void dwc2_wakeup_from_lpm_l1(struct dwc2_hsotg *hsotg)
{
 u32 glpmcfg;
 u32 i = 0;

 if (hsotg->lx_state != DWC2_L1) {
  dev_err(hsotg->dev, "Core isn't in DWC2_L1 state\n");
  return;
 }

 glpmcfg = dwc2_readl(hsotg, GLPMCFG);
 if (dwc2_is_device_mode(hsotg)) {
  dev_dbg(hsotg->dev, "Exit from L1 state\n");
  glpmcfg &= ~GLPMCFG_ENBLSLPM;
  glpmcfg &= ~GLPMCFG_HIRD_THRES_EN;
  dwc2_writel(hsotg, glpmcfg, GLPMCFG);

  do {
   glpmcfg = dwc2_readl(hsotg, GLPMCFG);

   if (!(glpmcfg & (GLPMCFG_COREL1RES_MASK |
      GLPMCFG_L1RESUMEOK | GLPMCFG_SLPSTS)))
    break;

   udelay(1);
  } while (++i < 200);

  if (i == 200) {
   dev_err(hsotg->dev, "Failed to exit L1 sleep state in 200us.\n");
   return;
  }
  dwc2_gadget_init_lpm(hsotg);
 } else {

  dev_err(hsotg->dev, "Host side LPM is not supported.\n");
  return;
 }


 hsotg->lx_state = DWC2_L0;


 call_gadget(hsotg, resume);
}
