
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {char* timer_error; scalar_t__ autotimer; } ;
typedef int ssize_t ;


 struct power_supply* dev_get_drvdata (struct device*) ;
 struct bq2415x_device* power_supply_get_drvdata (struct power_supply*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t bq2415x_sysfs_show_timer(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 struct bq2415x_device *bq = power_supply_get_drvdata(psy);

 if (bq->timer_error)
  return sprintf(buf, "%s\n", bq->timer_error);

 if (bq->autotimer)
  return sprintf(buf, "auto\n");
 return sprintf(buf, "off\n");
}
