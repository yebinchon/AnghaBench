
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int charger_connected; } ;
struct pm2xxx_charger {int ac_conn; int ac_work; int charger_wq; TYPE_1__ ac; } ;


 int pm2xxx_charger_detection (struct pm2xxx_charger*,scalar_t__*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int pm2xxx_charger_itv_pwr_plug_mngt(struct pm2xxx_charger *pm2, int val)
{

 int ret;
 u8 read_val;






 ret = pm2xxx_charger_detection(pm2, &read_val);

 if ((ret == 0) && read_val) {
  pm2->ac.charger_connected = 1;
  pm2->ac_conn = 1;
  queue_work(pm2->charger_wq, &pm2->ac_work);
 }


 return ret;
}
