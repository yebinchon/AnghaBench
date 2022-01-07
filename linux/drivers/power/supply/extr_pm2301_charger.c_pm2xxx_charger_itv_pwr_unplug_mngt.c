
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ charger_connected; } ;
struct pm2xxx_charger {int ac_work; int charger_wq; TYPE_1__ ac; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static int pm2xxx_charger_itv_pwr_unplug_mngt(struct pm2xxx_charger *pm2,
        int val)
{
 pm2->ac.charger_connected = 0;
 queue_work(pm2->charger_wq, &pm2->ac_work);

 return 0;
}
