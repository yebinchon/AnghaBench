
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;


 struct reg_field REG_FIELD (int,int,int) ;
 struct regmap_field* devm_regmap_field_alloc (struct device*,struct regmap*,struct reg_field) ;

__attribute__((used)) static struct regmap_field *st_pc_get_value(struct device *dev,
         struct regmap *regmap, int bank,
         int data, int lsb, int msb)
{
 struct reg_field reg = REG_FIELD((data + bank) * 4, lsb, msb);

 if (data < 0)
  return ((void*)0);

 return devm_regmap_field_alloc(dev, regmap, reg);
}
