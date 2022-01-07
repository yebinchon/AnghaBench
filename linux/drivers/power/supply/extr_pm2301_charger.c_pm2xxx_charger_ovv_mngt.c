
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int psy; } ;
struct TYPE_3__ {int ovv; } ;
struct pm2xxx_charger {int check_hw_failure_work; int charger_wq; TYPE_2__ ac_chg; TYPE_1__ flags; int dev; } ;


 int dev_err (int ,char*) ;
 int power_supply_changed (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int pm2xxx_charger_ovv_mngt(struct pm2xxx_charger *pm2, int val)
{
 dev_err(pm2->dev, "Overvoltage detected\n");
 pm2->flags.ovv = 1;
 power_supply_changed(pm2->ac_chg.psy);


 queue_delayed_work(pm2->charger_wq, &pm2->check_hw_failure_work, 0);

 return 0;
}
