
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int status; int usb_psy; int edev; } ;
typedef int irqreturn_t ;


 int EXTCON_USB ;
 int IRQ_HANDLED ;
 int STATUS_USBIN_VALID ;
 int extcon_set_state_sync (int ,int ,int) ;
 int power_supply_changed (int ) ;
 int smbb_set_line_flag (struct smbb_charger*,int,int) ;

__attribute__((used)) static irqreturn_t smbb_usb_valid_handler(int irq, void *_data)
{
 struct smbb_charger *chg = _data;

 smbb_set_line_flag(chg, irq, STATUS_USBIN_VALID);
 extcon_set_state_sync(chg->edev, EXTCON_USB,
    chg->status & STATUS_USBIN_VALID);
 power_supply_changed(chg->usb_psy);

 return IRQ_HANDLED;
}
