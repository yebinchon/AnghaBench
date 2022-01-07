
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ acg_enable; } ;
struct dwc2_hsotg {int dev; TYPE_1__ params; } ;


 int PCGCCTL1 ;
 int PCGCCTL1_GATEEN ;
 int dev_dbg (int ,char*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

void dwc2_enable_acg(struct dwc2_hsotg *hsotg)
{
 if (hsotg->params.acg_enable) {
  u32 pcgcctl1 = dwc2_readl(hsotg, PCGCCTL1);

  dev_dbg(hsotg->dev, "Enabling Active Clock Gating\n");
  pcgcctl1 |= PCGCCTL1_GATEEN;
  dwc2_writel(hsotg, pcgcctl1, PCGCCTL1);
 }
}
