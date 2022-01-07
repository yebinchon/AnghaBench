
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da9030_charger {int is_on; int mA; int mV; int fault; int master; int chdet; int adc; } ;


 int DA9030_CHARGE_CONTROL ;
 int DA9030_CHRG_CHARGER_ENABLE ;
 int DA9030_FAULT_LOG ;
 int DA9030_STATUS_CHDET ;
 int da9030_read_adc (struct da9030_charger*,int *) ;
 int da903x_query_status (int ,int ) ;
 int da903x_read (int ,int ,int*) ;

__attribute__((used)) static void da9030_charger_update_state(struct da9030_charger *charger)
{
 uint8_t val;

 da903x_read(charger->master, DA9030_CHARGE_CONTROL, &val);
 charger->is_on = (val & DA9030_CHRG_CHARGER_ENABLE) ? 1 : 0;
 charger->mA = ((val >> 3) & 0xf) * 100;
 charger->mV = (val & 0x7) * 50 + 4000;

 da9030_read_adc(charger, &charger->adc);
 da903x_read(charger->master, DA9030_FAULT_LOG, &charger->fault);
 charger->chdet = da903x_query_status(charger->master,
           DA9030_STATUS_CHDET);
}
