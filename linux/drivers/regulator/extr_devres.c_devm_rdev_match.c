
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void regulator_dev ;
struct device {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int devm_rdev_match(struct device *dev, void *res, void *data)
{
 struct regulator_dev **r = res;
 if (!r || !*r) {
  WARN_ON(!r || !*r);
  return 0;
 }
 return *r == data;
}
