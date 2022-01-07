
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct da9150_charger {int da9150; } ;


 int DA9150_CHG_VFAULT_MASK ;
 int DA9150_PPR_CHGCTRL_C ;
 int da9150_reg_read (int ,int ) ;

__attribute__((used)) static int da9150_charger_battery_voltage_min(struct da9150_charger *charger,
           union power_supply_propval *val)
{
 u8 reg;

 reg = da9150_reg_read(charger->da9150, DA9150_PPR_CHGCTRL_C);


 val->intval = ((reg & DA9150_CHG_VFAULT_MASK) * 50000) + 2500000;

 return 0;
}
