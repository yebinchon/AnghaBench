
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int GINTMSK ;
 int GINTSTS_DISCONNINT ;
 int GINTSTS_HCHINT ;
 int GINTSTS_NPTXFEMP ;
 int GINTSTS_PRTINT ;
 int GINTSTS_PTXFEMP ;
 int GINTSTS_SOF ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static void dwc2_disable_host_interrupts(struct dwc2_hsotg *hsotg)
{
 u32 intmsk = dwc2_readl(hsotg, GINTMSK);


 intmsk &= ~(GINTSTS_SOF | GINTSTS_PRTINT | GINTSTS_HCHINT |
      GINTSTS_PTXFEMP | GINTSTS_NPTXFEMP | GINTSTS_DISCONNINT);
 dwc2_writel(hsotg, intmsk, GINTMSK);
}
