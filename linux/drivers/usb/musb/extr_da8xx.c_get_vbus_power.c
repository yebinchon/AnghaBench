
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct regulator*) ;
 int regulator_get_current_limit (struct regulator*) ;
 struct regulator* regulator_get_optional (struct device*,char*) ;
 int regulator_put (struct regulator*) ;

__attribute__((used)) static inline u8 get_vbus_power(struct device *dev)
{
 struct regulator *vbus_supply;
 int current_uA;

 vbus_supply = regulator_get_optional(dev, "vbus");
 if (IS_ERR(vbus_supply))
  return 255;
 current_uA = regulator_get_current_limit(vbus_supply);
 regulator_put(vbus_supply);
 if (current_uA <= 0 || current_uA > 510000)
  return 255;
 return current_uA / 1000 / 2;
}
