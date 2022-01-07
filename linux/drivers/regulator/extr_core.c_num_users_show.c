
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int use_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t num_users_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", rdev->use_count);
}
