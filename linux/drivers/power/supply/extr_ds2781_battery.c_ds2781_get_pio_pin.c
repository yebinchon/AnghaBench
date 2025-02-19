
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct power_supply {int dummy; } ;
struct ds2781_device_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DS2781_SFR ;
 int DS2781_SFR_PIOSC ;
 int ds2781_read8 (struct ds2781_device_info*,int*,int ) ;
 int sprintf (char*,char*,int) ;
 struct ds2781_device_info* to_ds2781_device_info (struct power_supply*) ;
 struct power_supply* to_power_supply (struct device*) ;

__attribute__((used)) static ssize_t ds2781_get_pio_pin(struct device *dev,
 struct device_attribute *attr,
 char *buf)
{
 int ret;
 u8 sfr;
 struct power_supply *psy = to_power_supply(dev);
 struct ds2781_device_info *dev_info = to_ds2781_device_info(psy);

 ret = ds2781_read8(dev_info, &sfr, DS2781_SFR);
 if (ret < 0)
  return ret;

 ret = sprintf(buf, "%d\n", sfr & DS2781_SFR_PIOSC);
 return ret;
}
