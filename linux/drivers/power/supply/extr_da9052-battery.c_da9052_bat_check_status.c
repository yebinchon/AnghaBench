
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9052_battery {int status; void* charger_type; int da9052; } ;


 void* DA9052_CHARGER ;
 void* DA9052_NOCHARGER ;
 int DA9052_STATUSA_DCINDET ;
 int DA9052_STATUSA_DCINSEL ;
 int DA9052_STATUSA_VBUSDET ;
 int DA9052_STATUSA_VBUSSEL ;
 int DA9052_STATUSB_CHGEND ;
 int DA9052_STATUS_A_REG ;
 void* POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int da9052_group_read (int ,int ,int,int*) ;
 int da9052_read_chg_current (struct da9052_battery*,int*) ;
 int da9052_read_chgend_current (struct da9052_battery*,int*) ;

__attribute__((used)) static int da9052_bat_check_status(struct da9052_battery *bat, int *status)
{
 u8 v[2] = {0, 0};
 u8 bat_status;
 u8 chg_end;
 int ret;
 int chg_current;
 int chg_end_current;
 bool dcinsel;
 bool dcindet;
 bool vbussel;
 bool vbusdet;
 bool dc;
 bool vbus;

 ret = da9052_group_read(bat->da9052, DA9052_STATUS_A_REG, 2, v);
 if (ret < 0)
  return ret;

 bat_status = v[0];
 chg_end = v[1];

 dcinsel = bat_status & DA9052_STATUSA_DCINSEL;
 dcindet = bat_status & DA9052_STATUSA_DCINDET;
 vbussel = bat_status & DA9052_STATUSA_VBUSSEL;
 vbusdet = bat_status & DA9052_STATUSA_VBUSDET;
 dc = dcinsel && dcindet;
 vbus = vbussel && vbusdet;


 if (dc || vbus) {
  bat->charger_type = DA9052_CHARGER;




  if ((chg_end & DA9052_STATUSB_CHGEND) != 0) {
   ret = da9052_read_chg_current(bat, &chg_current);
   if (ret < 0)
    return ret;
   ret = da9052_read_chgend_current(bat, &chg_end_current);
   if (ret < 0)
    return ret;

   if (chg_current >= chg_end_current)
    bat->status = POWER_SUPPLY_STATUS_CHARGING;
   else
    bat->status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  } else {



   bat->status = POWER_SUPPLY_STATUS_CHARGING;
  }
 } else if (dcindet || vbusdet) {
   bat->charger_type = DA9052_CHARGER;
   bat->status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {
  bat->charger_type = DA9052_NOCHARGER;
  bat->status = POWER_SUPPLY_STATUS_DISCHARGING;
 }

 if (status != ((void*)0))
  *status = bat->status;
 return 0;
}
