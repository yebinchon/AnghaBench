
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dev; } ;


 int GINTMSK ;
 int dev_dbg (int ,char*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static void dwc2_hsotg_en_gsint(struct dwc2_hsotg *hsotg, u32 ints)
{
 u32 gsintmsk = dwc2_readl(hsotg, GINTMSK);
 u32 new_gsintmsk;

 new_gsintmsk = gsintmsk | ints;

 if (new_gsintmsk != gsintmsk) {
  dev_dbg(hsotg->dev, "gsintmsk now 0x%08x\n", new_gsintmsk);
  dwc2_writel(hsotg, new_gsintmsk, GINTMSK);
 }
}
