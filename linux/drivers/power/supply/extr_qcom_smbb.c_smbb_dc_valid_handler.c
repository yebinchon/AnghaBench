
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int dc_psy; int dc_disabled; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int STATUS_DCIN_VALID ;
 int power_supply_changed (int ) ;
 int smbb_set_line_flag (struct smbb_charger*,int,int ) ;

__attribute__((used)) static irqreturn_t smbb_dc_valid_handler(int irq, void *_data)
{
 struct smbb_charger *chg = _data;

 smbb_set_line_flag(chg, irq, STATUS_DCIN_VALID);
 if (!chg->dc_disabled)
  power_supply_changed(chg->dc_psy);

 return IRQ_HANDLED;
}
