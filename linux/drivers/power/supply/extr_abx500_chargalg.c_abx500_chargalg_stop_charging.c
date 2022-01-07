
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_chargalg {int maintenance_chg; int chargalg_psy; int chargalg_wd_work; int charge_status; } ;


 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int abx500_chargalg_ac_en (struct abx500_chargalg*,int,int ,int ) ;
 int abx500_chargalg_stop_maintenance_timer (struct abx500_chargalg*) ;
 int abx500_chargalg_stop_safety_timer (struct abx500_chargalg*) ;
 int abx500_chargalg_usb_en (struct abx500_chargalg*,int,int ,int ) ;
 int cancel_delayed_work (int *) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static void abx500_chargalg_stop_charging(struct abx500_chargalg *di)
{
 abx500_chargalg_ac_en(di, 0, 0, 0);
 abx500_chargalg_usb_en(di, 0, 0, 0);
 abx500_chargalg_stop_safety_timer(di);
 abx500_chargalg_stop_maintenance_timer(di);
 di->charge_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 di->maintenance_chg = 0;
 cancel_delayed_work(&di->chargalg_wd_work);
 power_supply_changed(di->chargalg_psy);
}
