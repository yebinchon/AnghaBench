
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq27xxx_device_info {int dev; } ;


 int BQ27XXX_REG_VOLT ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_voltage(struct bq27xxx_device_info *di,
       union power_supply_propval *val)
{
 int volt;

 volt = bq27xxx_read(di, BQ27XXX_REG_VOLT, 0);
 if (volt < 0) {
  dev_err(di->dev, "error reading voltage\n");
  return volt;
 }

 val->intval = volt * 1000;

 return 0;
}
