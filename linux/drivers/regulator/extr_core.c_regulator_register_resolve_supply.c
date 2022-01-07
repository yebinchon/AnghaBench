
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 struct regulator_dev* dev_to_rdev (struct device*) ;
 int rdev_dbg (struct regulator_dev*,char*) ;
 scalar_t__ regulator_resolve_supply (struct regulator_dev*) ;

__attribute__((used)) static int regulator_register_resolve_supply(struct device *dev, void *data)
{
 struct regulator_dev *rdev = dev_to_rdev(dev);

 if (regulator_resolve_supply(rdev))
  rdev_dbg(rdev, "unable to resolve supply\n");

 return 0;
}
