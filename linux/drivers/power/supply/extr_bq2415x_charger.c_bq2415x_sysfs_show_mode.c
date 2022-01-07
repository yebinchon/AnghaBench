
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {scalar_t__ automode; int mode; } ;
typedef int ssize_t ;







 struct power_supply* dev_get_drvdata (struct device*) ;
 struct bq2415x_device* power_supply_get_drvdata (struct power_supply*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t bq2415x_sysfs_show_mode(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 struct bq2415x_device *bq = power_supply_get_drvdata(psy);
 ssize_t ret = 0;

 if (bq->automode > 0)
  ret += sprintf(buf+ret, "auto (");

 switch (bq->mode) {
 case 128:
  ret += sprintf(buf+ret, "off");
  break;
 case 129:
  ret += sprintf(buf+ret, "none");
  break;
 case 130:
  ret += sprintf(buf+ret, "host");
  break;
 case 131:
  ret += sprintf(buf+ret, "dedicated");
  break;
 case 132:
  ret += sprintf(buf+ret, "boost");
  break;
 }

 if (bq->automode > 0)
  ret += sprintf(buf+ret, ")");

 ret += sprintf(buf+ret, "\n");
 return ret;
}
