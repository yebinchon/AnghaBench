
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int dev; } ;


 int EINVAL ;
 int bq27xxx_battery_cfgupdate_priv (struct bq27xxx_device_info*,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static inline int bq27xxx_battery_set_cfgupdate(struct bq27xxx_device_info *di)
{
 int ret = bq27xxx_battery_cfgupdate_priv(di, 1);
 if (ret < 0 && ret != -EINVAL)
  dev_err(di->dev, "bus error on set_cfgupdate: %d\n", ret);

 return ret;
}
