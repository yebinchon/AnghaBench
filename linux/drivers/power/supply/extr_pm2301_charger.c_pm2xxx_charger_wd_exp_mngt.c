
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int psy; } ;
struct TYPE_3__ {int wd_expired; } ;
struct pm2xxx_charger {TYPE_2__ ac_chg; TYPE_1__ ac; int dev; } ;


 int dev_dbg (int ,char*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static int pm2xxx_charger_wd_exp_mngt(struct pm2xxx_charger *pm2, int val)
{
 dev_dbg(pm2->dev , "20 minutes watchdog expired\n");

 pm2->ac.wd_expired = 1;
 power_supply_changed(pm2->ac_chg.psy);

 return 0;
}
