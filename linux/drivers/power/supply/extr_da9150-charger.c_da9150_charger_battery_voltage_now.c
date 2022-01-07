
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct da9150_charger {int vbat_chan; } ;


 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static int da9150_charger_battery_voltage_now(struct da9150_charger *charger,
           union power_supply_propval *val)
{
 int v_val, ret;


 ret = iio_read_channel_processed(charger->vbat_chan, &v_val);
 if (ret < 0)
  return ret;

 val->intval = v_val * 1000;

 return 0;
}
