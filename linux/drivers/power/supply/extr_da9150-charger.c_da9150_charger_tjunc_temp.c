
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct da9150_charger {int tjunc_chan; } ;


 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static int da9150_charger_tjunc_temp(struct da9150_charger *charger,
         union power_supply_propval *val)
{
 int t_val, ret;


 ret = iio_read_channel_processed(charger->tjunc_chan, &t_val);
 if (ret < 0)
  return ret;


 val->intval = t_val / 100;

 return 0;
}
