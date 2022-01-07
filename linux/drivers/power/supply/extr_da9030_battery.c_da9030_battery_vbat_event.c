
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vbat_low; scalar_t__ vbat_crit; } ;
struct TYPE_4__ {scalar_t__ vbat_res; } ;
struct da9030_charger {int (* battery_critical ) () ;TYPE_1__ thresholds; TYPE_2__ adc; int (* battery_low ) () ;int master; scalar_t__ is_on; } ;


 int DA9030_VBATMON ;
 int da9030_read_adc (struct da9030_charger*,TYPE_2__*) ;
 int da903x_write (int ,int ,scalar_t__) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void da9030_battery_vbat_event(struct da9030_charger *charger)
{
 da9030_read_adc(charger, &charger->adc);

 if (charger->is_on)
  return;

 if (charger->adc.vbat_res < charger->thresholds.vbat_low) {

  da903x_write(charger->master, DA9030_VBATMON,
        charger->thresholds.vbat_crit);
  if (charger->battery_low)
   charger->battery_low();
 } else if (charger->adc.vbat_res <
     charger->thresholds.vbat_crit) {

  if (charger->battery_critical)
   charger->battery_critical();
 }
}
