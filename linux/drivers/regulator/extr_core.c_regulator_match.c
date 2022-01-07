
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 struct regulator_dev* dev_to_rdev (struct device*) ;
 int rdev_get_name (struct regulator_dev*) ;
 scalar_t__ strcmp (int ,void const*) ;

__attribute__((used)) static int regulator_match(struct device *dev, const void *data)
{
 struct regulator_dev *r = dev_to_rdev(dev);

 return strcmp(rdev_get_name(r), data) == 0;
}
