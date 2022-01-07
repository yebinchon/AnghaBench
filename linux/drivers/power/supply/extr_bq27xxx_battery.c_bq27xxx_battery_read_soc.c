
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int opts; int dev; } ;


 int BQ27XXX_O_ZERO ;
 int BQ27XXX_REG_SOC ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int bq27xxx_battery_read_soc(struct bq27xxx_device_info *di)
{
 int soc;

 if (di->opts & BQ27XXX_O_ZERO)
  soc = bq27xxx_read(di, BQ27XXX_REG_SOC, 1);
 else
  soc = bq27xxx_read(di, BQ27XXX_REG_SOC, 0);

 if (soc < 0)
  dev_dbg(di->dev, "error reading State-of-Charge\n");

 return soc;
}
