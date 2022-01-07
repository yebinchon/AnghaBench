
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int opts; int dev; } ;


 int BQ27XXX_O_ZERO ;
 int BQ27XXX_POWER_CONSTANT ;
 int BQ27XXX_REG_AE ;
 int BQ27XXX_RS ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_read_energy(struct bq27xxx_device_info *di)
{
 int ae;

 ae = bq27xxx_read(di, BQ27XXX_REG_AE, 0);
 if (ae < 0) {
  dev_dbg(di->dev, "error reading available energy\n");
  return ae;
 }

 if (di->opts & BQ27XXX_O_ZERO)
  ae *= BQ27XXX_POWER_CONSTANT / BQ27XXX_RS;
 else
  ae *= 1000;

 return ae;
}
