
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct max77693_dev {struct regmap* regmap; struct regmap* regmap_chg; } ;
typedef enum max77693_types { ____Placeholder_max77693_types } max77693_types ;





 int TYPE_MAX77693 ;

__attribute__((used)) static struct regmap *max77693_get_regmap(enum max77693_types type,
       struct max77693_dev *max77693,
       int reg_id)
{
 if (type == TYPE_MAX77693)
  return max77693->regmap;


 switch (reg_id) {
 case 129:
 case 128:
  return max77693->regmap;
 case 130:
  return max77693->regmap_chg;
 default:
  return max77693->regmap;
 }
}
