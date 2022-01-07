
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int type; } ;




 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);

 switch (rdev->desc->type) {
 case 128:
  return sprintf(buf, "voltage\n");
 case 129:
  return sprintf(buf, "current\n");
 }
 return sprintf(buf, "unknown\n");
}
