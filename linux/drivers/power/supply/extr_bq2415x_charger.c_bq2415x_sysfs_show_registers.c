
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {int dummy; } ;
typedef int ssize_t ;


 int BQ2415X_REG_CONTROL ;
 int BQ2415X_REG_CURRENT ;
 int BQ2415X_REG_STATUS ;
 int BQ2415X_REG_VENDER ;
 int BQ2415X_REG_VOLTAGE ;
 int bq2415x_sysfs_print_reg (struct bq2415x_device*,int ,char*) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 struct bq2415x_device* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static ssize_t bq2415x_sysfs_show_registers(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 struct bq2415x_device *bq = power_supply_get_drvdata(psy);
 ssize_t ret = 0;

 ret += bq2415x_sysfs_print_reg(bq, BQ2415X_REG_STATUS, buf+ret);
 ret += bq2415x_sysfs_print_reg(bq, BQ2415X_REG_CONTROL, buf+ret);
 ret += bq2415x_sysfs_print_reg(bq, BQ2415X_REG_VOLTAGE, buf+ret);
 ret += bq2415x_sysfs_print_reg(bq, BQ2415X_REG_VENDER, buf+ret);
 ret += bq2415x_sysfs_print_reg(bq, BQ2415X_REG_CURRENT, buf+ret);
 return ret;
}
