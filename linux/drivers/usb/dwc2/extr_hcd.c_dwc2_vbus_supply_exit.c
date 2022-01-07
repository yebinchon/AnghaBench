
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {scalar_t__ vbus_supply; } ;


 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int dwc2_vbus_supply_exit(struct dwc2_hsotg *hsotg)
{
 if (hsotg->vbus_supply)
  return regulator_disable(hsotg->vbus_supply);

 return 0;
}
