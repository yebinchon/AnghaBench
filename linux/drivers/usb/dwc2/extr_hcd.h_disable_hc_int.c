
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int HCINTMSK (int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static inline void disable_hc_int(struct dwc2_hsotg *hsotg, int chnum, u32 intr)
{
 u32 mask = dwc2_readl(hsotg, HCINTMSK(chnum));

 mask &= ~intr;
 dwc2_writel(hsotg, mask, HCINTMSK(chnum));
}
