
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {int dummy; } ;
typedef int ssize_t ;


 int BQ2415X_TIMER_RESET ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;
 int bq2415x_set_autotimer (struct bq2415x_device*,int) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 struct bq2415x_device* power_supply_get_drvdata (struct power_supply*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t bq2415x_sysfs_set_timer(struct device *dev,
           struct device_attribute *attr,
           const char *buf,
           size_t count)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 struct bq2415x_device *bq = power_supply_get_drvdata(psy);
 int ret = 0;

 if (strncmp(buf, "auto", 4) == 0)
  bq2415x_set_autotimer(bq, 1);
 else if (strncmp(buf, "off", 3) == 0)
  bq2415x_set_autotimer(bq, 0);
 else
  ret = bq2415x_exec_command(bq, BQ2415X_TIMER_RESET);

 if (ret < 0)
  return ret;
 return count;
}
