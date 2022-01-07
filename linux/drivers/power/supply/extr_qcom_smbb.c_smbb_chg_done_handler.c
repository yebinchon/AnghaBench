
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int bat_psy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int STATUS_CHG_DONE ;
 int power_supply_changed (int ) ;
 int smbb_set_line_flag (struct smbb_charger*,int,int ) ;

__attribute__((used)) static irqreturn_t smbb_chg_done_handler(int irq, void *_data)
{
 struct smbb_charger *chg = _data;

 smbb_set_line_flag(chg, irq, STATUS_CHG_DONE);
 power_supply_changed(chg->bat_psy);

 return IRQ_HANDLED;
}
