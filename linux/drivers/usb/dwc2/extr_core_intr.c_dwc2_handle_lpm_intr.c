
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dev; int lx_state; } ;


 int DWC2_L1 ;
 int GINTSTS ;
 int GINTSTS_LPMTRANRCVD ;
 int GLPMCFG ;
 int GLPMCFG_ENBLSLPM ;
 int GLPMCFG_HIRD_MASK ;
 int GLPMCFG_HIRD_SHIFT ;
 int GLPMCFG_HIRD_THRES_EN ;
 int GLPMCFG_HIRD_THRES_MASK ;
 int GLPMCFG_HIRD_THRES_SHIFT ;
 int GLPMCFG_LPMCAP ;
 int GLPMCFG_SLPSTS ;
 int PCGCTL ;
 int PCGCTL_ENBL_SLEEP_GATING ;
 int call_gadget (struct dwc2_hsotg*,int ) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int suspend ;
 int udelay (int) ;

__attribute__((used)) static void dwc2_handle_lpm_intr(struct dwc2_hsotg *hsotg)
{
 u32 glpmcfg;
 u32 pcgcctl;
 u32 hird;
 u32 hird_thres;
 u32 hird_thres_en;
 u32 enslpm;


 dwc2_writel(hsotg, GINTSTS_LPMTRANRCVD, GINTSTS);

 glpmcfg = dwc2_readl(hsotg, GLPMCFG);

 if (!(glpmcfg & GLPMCFG_LPMCAP)) {
  dev_err(hsotg->dev, "Unexpected LPM interrupt\n");
  return;
 }

 hird = (glpmcfg & GLPMCFG_HIRD_MASK) >> GLPMCFG_HIRD_SHIFT;
 hird_thres = (glpmcfg & GLPMCFG_HIRD_THRES_MASK &
   ~GLPMCFG_HIRD_THRES_EN) >> GLPMCFG_HIRD_THRES_SHIFT;
 hird_thres_en = glpmcfg & GLPMCFG_HIRD_THRES_EN;
 enslpm = glpmcfg & GLPMCFG_ENBLSLPM;

 if (dwc2_is_device_mode(hsotg)) {
  dev_dbg(hsotg->dev, "HIRD_THRES_EN = %d\n", hird_thres_en);

  if (hird_thres_en && hird >= hird_thres) {
   dev_dbg(hsotg->dev, "L1 with utmi_l1_suspend_n\n");
  } else if (enslpm) {
   dev_dbg(hsotg->dev, "L1 with utmi_sleep_n\n");
  } else {
   dev_dbg(hsotg->dev, "Entering Sleep with L1 Gating\n");

   pcgcctl = dwc2_readl(hsotg, PCGCTL);
   pcgcctl |= PCGCTL_ENBL_SLEEP_GATING;
   dwc2_writel(hsotg, pcgcctl, PCGCTL);
  }



  udelay(10);

  glpmcfg = dwc2_readl(hsotg, GLPMCFG);

  if (glpmcfg & GLPMCFG_SLPSTS) {

   hsotg->lx_state = DWC2_L1;
   dev_dbg(hsotg->dev,
    "Core is in L1 sleep glpmcfg=%08x\n", glpmcfg);


   call_gadget(hsotg, suspend);
  }
 }
}
