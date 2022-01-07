
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;


 int NORMAL_GET ;
 struct regulator* _devm_regulator_get (struct device*,char const*,int ) ;

struct regulator *devm_regulator_get(struct device *dev, const char *id)
{
 return _devm_regulator_get(dev, id, NORMAL_GET);
}
