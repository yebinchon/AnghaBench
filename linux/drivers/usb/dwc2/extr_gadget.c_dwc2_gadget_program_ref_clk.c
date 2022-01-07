
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ref_clk_per; int sof_cnt_wkup_alert; } ;
struct dwc2_hsotg {int dev; TYPE_1__ params; } ;


 int GREFCLK ;
 int GREFCLK_REFCLKPER_SHIFT ;
 int GREFCLK_REF_CLK_MODE ;
 int GREFCLK_SOF_CNT_WKUP_ALERT_SHIFT ;
 int dev_dbg (int ,char*,int ) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

void dwc2_gadget_program_ref_clk(struct dwc2_hsotg *hsotg)
{
 u32 val = 0;

 val |= GREFCLK_REF_CLK_MODE;
 val |= hsotg->params.ref_clk_per << GREFCLK_REFCLKPER_SHIFT;
 val |= hsotg->params.sof_cnt_wkup_alert <<
        GREFCLK_SOF_CNT_WKUP_ALERT_SHIFT;

 dwc2_writel(hsotg, val, GREFCLK);
 dev_dbg(hsotg->dev, "GREFCLK=0x%08x\n", dwc2_readl(hsotg, GREFCLK));
}
