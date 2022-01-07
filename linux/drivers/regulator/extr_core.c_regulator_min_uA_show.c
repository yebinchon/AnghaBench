
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int min_uA; } ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t regulator_min_uA_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);

 if (!rdev->constraints)
  return sprintf(buf, "constraint not defined\n");

 return sprintf(buf, "%d\n", rdev->constraints->min_uA);
}
