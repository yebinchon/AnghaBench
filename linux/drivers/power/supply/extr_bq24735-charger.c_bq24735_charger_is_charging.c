
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24735 {int client; } ;


 int BQ24735_CHG_OPT ;
 int BQ24735_CHG_OPT_CHARGE_DISABLE ;
 int bq24735_charger_is_present (struct bq24735*) ;
 int bq24735_read_word (int ,int ) ;

__attribute__((used)) static int bq24735_charger_is_charging(struct bq24735 *charger)
{
 int ret;

 if (!bq24735_charger_is_present(charger))
  return 0;

 ret = bq24735_read_word(charger->client, BQ24735_CHG_OPT);
 if (ret < 0)
  return ret;

 return !(ret & BQ24735_CHG_OPT_CHARGE_DISABLE);
}
