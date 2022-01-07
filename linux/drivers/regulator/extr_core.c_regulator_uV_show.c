
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int regulator_get_voltage_rdev (struct regulator_dev*) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t regulator_uV_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 int uV;

 regulator_lock(rdev);
 uV = regulator_get_voltage_rdev(rdev);
 regulator_unlock(rdev);

 if (uV < 0)
  return uV;
 return sprintf(buf, "%d\n", uV);
}
