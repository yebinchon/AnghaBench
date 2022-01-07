
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct power_supply {int dummy; } ;
struct TYPE_3__ {scalar_t__ charger_connected; } ;
struct TYPE_4__ {scalar_t__ charger_connected; } ;
struct ab8500_charger {int autopower; TYPE_1__ usb; TYPE_2__ ac; scalar_t__ autopower_cfg; } ;


 int ab8500_enable_disable_sw_fallback (struct ab8500_charger*,int) ;
 int power_supply_changed (struct power_supply*) ;

__attribute__((used)) static void ab8500_power_supply_changed(struct ab8500_charger *di,
     struct power_supply *psy)
{
 if (di->autopower_cfg) {
  if (!di->usb.charger_connected &&
      !di->ac.charger_connected &&
      di->autopower) {
   di->autopower = 0;
   ab8500_enable_disable_sw_fallback(di, 0);
  } else if (!di->autopower &&
      (di->ac.charger_connected ||
       di->usb.charger_connected)) {
   di->autopower = 1;
   ab8500_enable_disable_sw_fallback(di, 1);
  }
 }
 power_supply_changed(psy);
}
