
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int psy; } ;
struct TYPE_3__ {int mainextchnotok; } ;
struct ab8500_charger {int check_hw_failure_work; int charger_wq; TYPE_2__ ac_chg; TYPE_1__ flags; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ab8500_power_supply_changed (struct ab8500_charger*,int ) ;
 int dev_dbg (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static irqreturn_t ab8500_charger_mainextchnotok_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 dev_dbg(di->dev, "Main charger not ok\n");
 di->flags.mainextchnotok = 1;
 ab8500_power_supply_changed(di, di->ac_chg.psy);


 queue_delayed_work(di->charger_wq, &di->check_hw_failure_work, 0);

 return IRQ_HANDLED;
}
