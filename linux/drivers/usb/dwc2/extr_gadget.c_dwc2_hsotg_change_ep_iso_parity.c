
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int DXEPCTL_EOFRNUM ;
 int DXEPCTL_SETEVENFR ;
 int DXEPCTL_SETODDFR ;
 int dwc2_readl (struct dwc2_hsotg*,int) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int) ;

__attribute__((used)) static void dwc2_hsotg_change_ep_iso_parity(struct dwc2_hsotg *hsotg,
         u32 epctl_reg)
{
 u32 ctrl;

 ctrl = dwc2_readl(hsotg, epctl_reg);
 if (ctrl & DXEPCTL_EOFRNUM)
  ctrl |= DXEPCTL_SETEVENFR;
 else
  ctrl |= DXEPCTL_SETODDFR;
 dwc2_writel(hsotg, ctrl, epctl_reg);
}
