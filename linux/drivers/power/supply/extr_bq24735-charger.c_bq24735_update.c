
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24735 {int charger; int lock; scalar_t__ charging; } ;


 scalar_t__ bq24735_charger_is_present (struct bq24735*) ;
 int bq24735_disable_charging (struct bq24735*) ;
 int bq24735_enable_charging (struct bq24735*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static void bq24735_update(struct bq24735 *charger)
{
 mutex_lock(&charger->lock);

 if (charger->charging && bq24735_charger_is_present(charger))
  bq24735_enable_charging(charger);
 else
  bq24735_disable_charging(charger);

 mutex_unlock(&charger->lock);

 power_supply_changed(charger->charger);
}
