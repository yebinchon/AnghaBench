
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ab8500_fg {int dev; } ;
typedef int ssize_t ;


 int AB8500_RTC ;
 int AB8505_RTC_PCUT_FLAG_TIME_REG ;
 int PAGE_SIZE ;
 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 int dev_err (struct device*,char*) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 struct ab8500_fg* power_supply_get_drvdata (struct power_supply*) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t ab8505_powercut_flagtime_read(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 int ret;
 u8 reg_value;
 struct power_supply *psy = dev_get_drvdata(dev);
 struct ab8500_fg *di = power_supply_get_drvdata(psy);

 ret = abx500_get_register_interruptible(di->dev, AB8500_RTC,
  AB8505_RTC_PCUT_FLAG_TIME_REG, &reg_value);

 if (ret < 0) {
  dev_err(dev, "Failed to read AB8505_RTC_PCUT_FLAG_TIME_REG\n");
  goto fail;
 }

 return scnprintf(buf, PAGE_SIZE, "%d\n", (reg_value & 0x7F));

fail:
 return ret;
}
