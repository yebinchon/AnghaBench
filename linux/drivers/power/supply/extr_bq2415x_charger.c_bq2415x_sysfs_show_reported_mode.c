
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {scalar_t__ automode; int reported_mode; } ;
typedef int ssize_t ;







 int EINVAL ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 struct bq2415x_device* power_supply_get_drvdata (struct power_supply*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t bq2415x_sysfs_show_reported_mode(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 struct bq2415x_device *bq = power_supply_get_drvdata(psy);

 if (bq->automode < 0)
  return -EINVAL;

 switch (bq->reported_mode) {
 case 128:
  return sprintf(buf, "off\n");
 case 129:
  return sprintf(buf, "none\n");
 case 130:
  return sprintf(buf, "host\n");
 case 131:
  return sprintf(buf, "dedicated\n");
 case 132:
  return sprintf(buf, "boost\n");
 }

 return -EINVAL;
}
