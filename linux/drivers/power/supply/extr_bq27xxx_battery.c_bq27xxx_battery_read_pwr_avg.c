
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int opts; int dev; } ;


 int BQ27XXX_O_ZERO ;
 int BQ27XXX_POWER_CONSTANT ;
 int BQ27XXX_REG_AP ;
 int BQ27XXX_RS ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_err (int ,char*,int ,int) ;

__attribute__((used)) static int bq27xxx_battery_read_pwr_avg(struct bq27xxx_device_info *di)
{
 int tval;

 tval = bq27xxx_read(di, BQ27XXX_REG_AP, 0);
 if (tval < 0) {
  dev_err(di->dev, "error reading average power register  %02x: %d\n",
   BQ27XXX_REG_AP, tval);
  return tval;
 }

 if (di->opts & BQ27XXX_O_ZERO)
  return (tval * BQ27XXX_POWER_CONSTANT) / BQ27XXX_RS;
 else
  return tval;
}
