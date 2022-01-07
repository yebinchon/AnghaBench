
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 char* rdev_get_name (struct regulator_dev*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", rdev_get_name(rdev));
}
