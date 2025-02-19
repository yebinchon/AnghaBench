
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct power_supply {int dummy; } ;
struct ds2781_device_info {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DS2781_CONTROL_PMOD ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int ds2781_get_control_register (struct ds2781_device_info*,int*) ;
 int ds2781_set_control_register (struct ds2781_device_info*,int) ;
 int kstrtou8 (char const*,int ,int*) ;
 struct ds2781_device_info* to_ds2781_device_info (struct power_supply*) ;
 struct power_supply* to_power_supply (struct device*) ;

__attribute__((used)) static ssize_t ds2781_set_pmod_enabled(struct device *dev,
 struct device_attribute *attr,
 const char *buf,
 size_t count)
{
 int ret;
 u8 control_reg, new_setting;
 struct power_supply *psy = to_power_supply(dev);
 struct ds2781_device_info *dev_info = to_ds2781_device_info(psy);


 ret = ds2781_get_control_register(dev_info, &control_reg);
 if (ret < 0)
  return ret;

 ret = kstrtou8(buf, 0, &new_setting);
 if (ret < 0)
  return ret;

 if ((new_setting != 0) && (new_setting != 1)) {
  dev_err(dev_info->dev, "Invalid pmod setting (0 or 1)\n");
  return -EINVAL;
 }

 if (new_setting)
  control_reg |= DS2781_CONTROL_PMOD;
 else
  control_reg &= ~DS2781_CONTROL_PMOD;

 ret = ds2781_set_control_register(dev_info, control_reg);
 if (ret < 0)
  return ret;

 return count;
}
