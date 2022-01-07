
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
typedef int s16 ;
struct TYPE_2__ {int addr; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 size_t REG_CURRENT ;
 TYPE_1__* sbs_data ;
 int sbs_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static int sbs_status_correct(struct i2c_client *client, int *intval)
{
 int ret;

 ret = sbs_read_word_data(client, sbs_data[REG_CURRENT].addr);
 if (ret < 0)
  return ret;

 ret = (s16)ret;


 if (ret == 0)
  *intval = POWER_SUPPLY_STATUS_FULL;

 if (*intval == POWER_SUPPLY_STATUS_FULL) {

  if (ret > 0)
   *intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (ret < 0)
   *intval = POWER_SUPPLY_STATUS_DISCHARGING;
 }

 return 0;
}
