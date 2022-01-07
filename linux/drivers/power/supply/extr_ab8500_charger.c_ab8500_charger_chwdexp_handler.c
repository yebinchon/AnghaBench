
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psy; } ;
struct TYPE_8__ {int wd_expired; scalar_t__ charger_online; } ;
struct TYPE_7__ {int psy; } ;
struct TYPE_6__ {int wd_expired; scalar_t__ charger_online; } ;
struct ab8500_charger {TYPE_1__ usb_chg; TYPE_4__ usb; TYPE_3__ ac_chg; TYPE_2__ ac; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ab8500_power_supply_changed (struct ab8500_charger*,int ) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static irqreturn_t ab8500_charger_chwdexp_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 dev_dbg(di->dev, "Charger watchdog expired\n");





 if (di->ac.charger_online) {
  di->ac.wd_expired = 1;
  ab8500_power_supply_changed(di, di->ac_chg.psy);
 }
 if (di->usb.charger_online) {
  di->usb.wd_expired = 1;
  ab8500_power_supply_changed(di, di->usb_chg.psy);
 }

 return IRQ_HANDLED;
}
