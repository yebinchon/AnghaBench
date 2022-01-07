
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hird_threshold; scalar_t__ service_interval; scalar_t__ besl; scalar_t__ lpm_clock_gating; scalar_t__ hird_threshold_en; int lpm; } ;
struct dwc2_hsotg {TYPE_1__ params; int dev; } ;


 int GINTMSK2 ;
 int GINTMSK2_WKUP_ALERT_INT_MSK ;
 int GLPMCFG ;
 int GLPMCFG_APPL1RES ;
 int GLPMCFG_ENBESL ;
 int GLPMCFG_ENBLSLPM ;
 int GLPMCFG_HIRD_THRES_EN ;
 int GLPMCFG_HIRD_THRES_SHIFT ;
 int GLPMCFG_LPMCAP ;
 int GLPMCFG_LPM_ACCEPT_CTRL_ISOC ;
 int GLPMCFG_LPM_REJECT_CTRL_CONTROL ;
 int dev_dbg (int ,char*,int ) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_set_bit (struct dwc2_hsotg*,int ,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

void dwc2_gadget_init_lpm(struct dwc2_hsotg *hsotg)
{
 u32 val;

 if (!hsotg->params.lpm)
  return;

 val = GLPMCFG_LPMCAP | GLPMCFG_APPL1RES;
 val |= hsotg->params.hird_threshold_en ? GLPMCFG_HIRD_THRES_EN : 0;
 val |= hsotg->params.lpm_clock_gating ? GLPMCFG_ENBLSLPM : 0;
 val |= hsotg->params.hird_threshold << GLPMCFG_HIRD_THRES_SHIFT;
 val |= hsotg->params.besl ? GLPMCFG_ENBESL : 0;
 val |= GLPMCFG_LPM_REJECT_CTRL_CONTROL;
 val |= GLPMCFG_LPM_ACCEPT_CTRL_ISOC;
 dwc2_writel(hsotg, val, GLPMCFG);
 dev_dbg(hsotg->dev, "GLPMCFG=0x%08x\n", dwc2_readl(hsotg, GLPMCFG));


 if (hsotg->params.service_interval)
  dwc2_set_bit(hsotg, GINTMSK2, GINTMSK2_WKUP_ALERT_INT_MSK);
}
