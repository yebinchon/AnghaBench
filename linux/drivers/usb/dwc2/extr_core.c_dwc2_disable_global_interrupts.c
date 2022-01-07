
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int GAHBCFG ;
 int GAHBCFG_GLBL_INTR_EN ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

void dwc2_disable_global_interrupts(struct dwc2_hsotg *hsotg)
{
 u32 ahbcfg = dwc2_readl(hsotg, GAHBCFG);

 ahbcfg &= ~GAHBCFG_GLBL_INTR_EN;
 dwc2_writel(hsotg, ahbcfg, GAHBCFG);
}
