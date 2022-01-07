
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_bypass ) (struct regulator_dev*,int*) ;} ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char const*) ;
 int stub1 (struct regulator_dev*,int*) ;

__attribute__((used)) static ssize_t regulator_bypass_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 const char *report;
 bool bypass;
 int ret;

 ret = rdev->desc->ops->get_bypass(rdev, &bypass);

 if (ret != 0)
  report = "unknown";
 else if (bypass)
  report = "enabled";
 else
  report = "disabled";

 return sprintf(buf, "%s\n", report);
}
