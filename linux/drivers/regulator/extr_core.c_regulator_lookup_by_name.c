
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int *,int *,char const*,int ) ;
 struct regulator_dev* dev_to_rdev (struct device*) ;
 int regulator_class ;
 int regulator_match ;

__attribute__((used)) static struct regulator_dev *regulator_lookup_by_name(const char *name)
{
 struct device *dev;

 dev = class_find_device(&regulator_class, ((void*)0), name, regulator_match);

 return dev ? dev_to_rdev(dev) : ((void*)0);
}
