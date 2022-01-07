
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bq24735 {TYPE_1__* client; scalar_t__ status_gpio; } ;
struct TYPE_2__ {int dev; } ;


 int BQ24735_CHG_OPT ;
 int BQ24735_CHG_OPT_AC_PRESENT ;
 int bq24735_read_word (TYPE_1__*,int ) ;
 int dev_dbg (int *,char*,int) ;
 int gpiod_get_value_cansleep (scalar_t__) ;

__attribute__((used)) static bool bq24735_charger_is_present(struct bq24735 *charger)
{
 if (charger->status_gpio) {
  return !gpiod_get_value_cansleep(charger->status_gpio);
 } else {
  int ac = 0;

  ac = bq24735_read_word(charger->client, BQ24735_CHG_OPT);
  if (ac < 0) {
   dev_dbg(&charger->client->dev,
    "Failed to read charger options : %d\n",
    ac);
   return 0;
  }
  return (ac & BQ24735_CHG_OPT_AC_PRESENT) ? 1 : 0;
 }

 return 0;
}
