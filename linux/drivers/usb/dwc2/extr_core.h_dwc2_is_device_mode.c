
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int GINTSTS ;
 int GINTSTS_CURMODE_HOST ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static inline int dwc2_is_device_mode(struct dwc2_hsotg *hsotg)
{
 return (dwc2_readl(hsotg, GINTSTS) & GINTSTS_CURMODE_HOST) == 0;
}
