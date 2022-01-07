
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int bat_psy; int statlock; int status; scalar_t__ addr; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SMBB_BAT_TEMP_STATUS ;
 int STATUS_BAT_HOT ;
 int STATUS_BAT_OK ;
 unsigned int TEMP_STATUS_HOT ;
 unsigned int TEMP_STATUS_OK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (int ) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static irqreturn_t smbb_bat_temp_handler(int irq, void *_data)
{
 struct smbb_charger *chg = _data;
 unsigned int val;
 int rc;

 rc = regmap_read(chg->regmap, chg->addr + SMBB_BAT_TEMP_STATUS, &val);
 if (rc)
  return IRQ_HANDLED;

 mutex_lock(&chg->statlock);
 if (val & TEMP_STATUS_OK) {
  chg->status |= STATUS_BAT_OK;
 } else {
  chg->status &= ~STATUS_BAT_OK;
  if (val & TEMP_STATUS_HOT)
   chg->status |= STATUS_BAT_HOT;
 }
 mutex_unlock(&chg->statlock);

 power_supply_changed(chg->bat_psy);
 return IRQ_HANDLED;
}
