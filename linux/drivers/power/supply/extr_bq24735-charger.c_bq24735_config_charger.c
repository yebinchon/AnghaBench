
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bq24735_platform {int charge_current; int charge_voltage; int input_current; scalar_t__ ext_control; } ;
struct bq24735 {TYPE_1__* client; struct bq24735_platform* pdata; } ;
struct TYPE_2__ {int dev; } ;


 int BQ24735_CHARGE_CURRENT ;
 int BQ24735_CHARGE_CURRENT_MASK ;
 int BQ24735_CHARGE_VOLTAGE ;
 int BQ24735_CHARGE_VOLTAGE_MASK ;
 int BQ24735_INPUT_CURRENT ;
 int BQ24735_INPUT_CURRENT_MASK ;
 int bq24735_write_word (TYPE_1__*,int ,int) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int bq24735_config_charger(struct bq24735 *charger)
{
 struct bq24735_platform *pdata = charger->pdata;
 int ret;
 u16 value;

 if (pdata->ext_control)
  return 0;

 if (pdata->charge_current) {
  value = pdata->charge_current & BQ24735_CHARGE_CURRENT_MASK;

  ret = bq24735_write_word(charger->client,
      BQ24735_CHARGE_CURRENT, value);
  if (ret < 0) {
   dev_err(&charger->client->dev,
    "Failed to write charger current : %d\n",
    ret);
   return ret;
  }
 }

 if (pdata->charge_voltage) {
  value = pdata->charge_voltage & BQ24735_CHARGE_VOLTAGE_MASK;

  ret = bq24735_write_word(charger->client,
      BQ24735_CHARGE_VOLTAGE, value);
  if (ret < 0) {
   dev_err(&charger->client->dev,
    "Failed to write charger voltage : %d\n",
    ret);
   return ret;
  }
 }

 if (pdata->input_current) {
  value = pdata->input_current & BQ24735_INPUT_CURRENT_MASK;

  ret = bq24735_write_word(charger->client,
      BQ24735_INPUT_CURRENT, value);
  if (ret < 0) {
   dev_err(&charger->client->dev,
    "Failed to write input current : %d\n",
    ret);
   return ret;
  }
 }

 return 0;
}
