
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int DCTL ;
 int DCTL_SFTDISCON ;
 int dwc2_clear_bit (struct dwc2_hsotg*,int ,int ) ;

void dwc2_hsotg_core_connect(struct dwc2_hsotg *hsotg)
{

 dwc2_clear_bit(hsotg, DCTL, DCTL_SFTDISCON);
}
