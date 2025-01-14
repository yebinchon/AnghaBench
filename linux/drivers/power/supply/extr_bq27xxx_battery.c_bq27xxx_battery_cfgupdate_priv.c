
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bq27xxx_device_info {scalar_t__ chip; int dev; } ;


 scalar_t__ BQ27425 ;
 int BQ27XXX_FLAG_CFGUP ;
 int BQ27XXX_MSLEEP (int) ;
 int BQ27XXX_REG_CTRL ;
 int BQ27XXX_REG_FLAGS ;
 int BQ27XXX_SET_CFGUPDATE ;
 int BQ27XXX_SOFT_RESET ;
 int EINVAL ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int bq27xxx_write (struct bq27xxx_device_info*,int ,int ,int) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int,int const) ;

__attribute__((used)) static int bq27xxx_battery_cfgupdate_priv(struct bq27xxx_device_info *di, bool active)
{
 const int limit = 100;
 u16 cmd = active ? BQ27XXX_SET_CFGUPDATE : BQ27XXX_SOFT_RESET;
 int ret, try = limit;

 ret = bq27xxx_write(di, BQ27XXX_REG_CTRL, cmd, 0);
 if (ret < 0)
  return ret;

 do {
  BQ27XXX_MSLEEP(25);
  ret = bq27xxx_read(di, BQ27XXX_REG_FLAGS, 0);
  if (ret < 0)
   return ret;
 } while (!!(ret & BQ27XXX_FLAG_CFGUP) != active && --try);

 if (!try && di->chip != BQ27425) {
  dev_err(di->dev, "timed out waiting for cfgupdate flag %d\n", active);
  return -EINVAL;
 }

 if (limit - try > 3)
  dev_warn(di->dev, "cfgupdate %d, retries %d\n", active, limit - try);

 return 0;
}
