
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 int regulator_unregister (struct regulator_dev*) ;

__attribute__((used)) static void devm_rdev_release(struct device *dev, void *res)
{
 regulator_unregister(*(struct regulator_dev **)res);
}
