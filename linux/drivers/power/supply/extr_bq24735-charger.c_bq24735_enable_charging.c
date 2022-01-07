
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bq24735 {int client; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ ext_control; } ;


 int BQ24735_CHG_OPT ;
 int BQ24735_CHG_OPT_CHARGE_DISABLE ;
 int bq24735_config_charger (struct bq24735*) ;
 int bq24735_update_word (int ,int ,int ,int ) ;

__attribute__((used)) static inline int bq24735_enable_charging(struct bq24735 *charger)
{
 int ret;

 if (charger->pdata->ext_control)
  return 0;

 ret = bq24735_config_charger(charger);
 if (ret)
  return ret;

 return bq24735_update_word(charger->client, BQ24735_CHG_OPT,
       BQ24735_CHG_OPT_CHARGE_DISABLE, 0);
}
