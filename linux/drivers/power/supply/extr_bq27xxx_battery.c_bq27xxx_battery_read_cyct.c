
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int dev; } ;


 int BQ27XXX_REG_CYCT ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_read_cyct(struct bq27xxx_device_info *di)
{
 int cyct;

 cyct = bq27xxx_read(di, BQ27XXX_REG_CYCT, 0);
 if (cyct < 0)
  dev_err(di->dev, "error reading cycle count total\n");

 return cyct;
}
