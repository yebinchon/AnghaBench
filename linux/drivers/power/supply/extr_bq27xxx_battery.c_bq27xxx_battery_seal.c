
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int dev; } ;


 int BQ27XXX_REG_CTRL ;
 int BQ27XXX_SEALED ;
 int bq27xxx_write (struct bq27xxx_device_info*,int ,int ,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int bq27xxx_battery_seal(struct bq27xxx_device_info *di)
{
 int ret;

 ret = bq27xxx_write(di, BQ27XXX_REG_CTRL, BQ27XXX_SEALED, 0);
 if (ret < 0) {
  dev_err(di->dev, "bus error on seal: %d\n", ret);
  return ret;
 }

 return 0;
}
