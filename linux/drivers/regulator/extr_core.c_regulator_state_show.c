
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int _regulator_is_enabled (struct regulator_dev*) ;
 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_print_state (char*,int ) ;
 int regulator_unlock (struct regulator_dev*) ;

__attribute__((used)) static ssize_t regulator_state_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 ssize_t ret;

 regulator_lock(rdev);
 ret = regulator_print_state(buf, _regulator_is_enabled(rdev));
 regulator_unlock(rdev);

 return ret;
}
