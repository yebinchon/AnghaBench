
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ac_max_uA; int (* set_charge ) (int ) ;} ;


 int PDA_POWER_CHARGE_AC ;
 int PDA_POWER_CHARGE_USB ;
 int WARN_ON (int ) ;
 scalar_t__ ac_draw ;
 int dev ;
 int dev_dbg (int ,char*) ;
 scalar_t__ new_ac_status ;
 scalar_t__ new_usb_status ;
 TYPE_1__* pdata ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int regulator_set_current_limit (scalar_t__,int,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static void update_charger(void)
{
 static int regulator_enabled;
 int max_uA = pdata->ac_max_uA;

 if (pdata->set_charge) {
  if (new_ac_status > 0) {
   dev_dbg(dev, "charger on (AC)\n");
   pdata->set_charge(PDA_POWER_CHARGE_AC);
  } else if (new_usb_status > 0) {
   dev_dbg(dev, "charger on (USB)\n");
   pdata->set_charge(PDA_POWER_CHARGE_USB);
  } else {
   dev_dbg(dev, "charger off\n");
   pdata->set_charge(0);
  }
 } else if (ac_draw) {
  if (new_ac_status > 0) {
   regulator_set_current_limit(ac_draw, max_uA, max_uA);
   if (!regulator_enabled) {
    dev_dbg(dev, "charger on (AC)\n");
    WARN_ON(regulator_enable(ac_draw));
    regulator_enabled = 1;
   }
  } else {
   if (regulator_enabled) {
    dev_dbg(dev, "charger off\n");
    WARN_ON(regulator_disable(ac_draw));
    regulator_enabled = 0;
   }
  }
 }
}
