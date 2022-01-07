
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;


 int OPTIONAL_GET ;
 struct regulator* _regulator_get (struct device*,char const*,int ) ;

struct regulator *regulator_get_optional(struct device *dev, const char *id)
{
 return _regulator_get(dev, id, OPTIONAL_GET);
}
