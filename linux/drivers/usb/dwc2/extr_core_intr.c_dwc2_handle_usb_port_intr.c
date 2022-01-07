
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int HPRT0 ;
 int HPRT0_ENA ;
 int HPRT0_ENACHG ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static void dwc2_handle_usb_port_intr(struct dwc2_hsotg *hsotg)
{
 u32 hprt0 = dwc2_readl(hsotg, HPRT0);

 if (hprt0 & HPRT0_ENACHG) {
  hprt0 &= ~HPRT0_ENA;
  dwc2_writel(hsotg, hprt0, HPRT0);
 }
}
