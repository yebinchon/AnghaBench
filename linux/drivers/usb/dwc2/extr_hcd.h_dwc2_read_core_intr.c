
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int GINTMSK ;
 int GINTSTS ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static inline u32 dwc2_read_core_intr(struct dwc2_hsotg *hsotg)
{
 return dwc2_readl(hsotg, GINTSTS) &
        dwc2_readl(hsotg, GINTMSK);
}
