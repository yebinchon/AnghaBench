
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int opts; int dev; } ;


 int BQ27XXX_O_ZERO ;
 int BQ27XXX_REG_TEMP ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_read_temperature(struct bq27xxx_device_info *di)
{
 int temp;

 temp = bq27xxx_read(di, BQ27XXX_REG_TEMP, 0);
 if (temp < 0) {
  dev_err(di->dev, "error reading temperature\n");
  return temp;
 }

 if (di->opts & BQ27XXX_O_ZERO)
  temp = 5 * temp / 2;

 return temp;
}
