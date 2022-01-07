
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int GSNPSID ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

bool dwc2_is_controller_alive(struct dwc2_hsotg *hsotg)
{
 if (dwc2_readl(hsotg, GSNPSID) == 0xffffffff)
  return 0;
 else
  return 1;
}
