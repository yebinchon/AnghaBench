
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct da9150_charger {int da9150; } ;


 int DA9150_CHG_VBAT_MASK ;
 int DA9150_PPR_CHGCTRL_B ;
 int da9150_reg_read (int ,int ) ;

__attribute__((used)) static int da9150_charger_battery_voltage_max(struct da9150_charger *charger,
           union power_supply_propval *val)
{
 u8 reg;

 reg = da9150_reg_read(charger->da9150, DA9150_PPR_CHGCTRL_B);


 val->intval = ((reg & DA9150_CHG_VBAT_MASK) * 25000) + 3650000;
 return 0;
}
