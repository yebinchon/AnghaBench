
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_rdev_match ;
 int devm_rdev_release ;
 int devres_release (struct device*,int ,int ,struct regulator_dev*) ;

void devm_regulator_unregister(struct device *dev, struct regulator_dev *rdev)
{
 int rc;

 rc = devres_release(dev, devm_rdev_release, devm_rdev_match, rdev);
 if (rc != 0)
  WARN_ON(rc);
}
