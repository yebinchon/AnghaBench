
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217_charger {int dev; int tps; } ;


 int TPS65217_CHGCONFIG1_NTC_TYPE ;
 int TPS65217_PROTECT_NONE ;
 int TPS65217_REG_CHGCONFIG1 ;
 int dev_err (int ,char*,int) ;
 int tps65217_clear_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int tps65217_config_charger(struct tps65217_charger *charger)
{
 int ret;
 ret = tps65217_clear_bits(charger->tps, TPS65217_REG_CHGCONFIG1,
      TPS65217_CHGCONFIG1_NTC_TYPE,
      TPS65217_PROTECT_NONE);
 if (ret) {
  dev_err(charger->dev,
   "failed to set 100k NTC setting: %d\n", ret);
  return ret;
 }

 return 0;
}
