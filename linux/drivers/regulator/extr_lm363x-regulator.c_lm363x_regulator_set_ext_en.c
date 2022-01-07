
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_2__ {int enable_reg; } ;


 int ENODEV ;
 int LM36274_EXT_EN_MASK ;


 int LM3632_EXT_EN_MASK ;


 TYPE_1__* lm363x_regulator_desc ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int lm363x_regulator_set_ext_en(struct regmap *regmap, int id)
{
 int ext_en_mask = 0;

 switch (id) {
 case 128:
 case 129:
  ext_en_mask = LM3632_EXT_EN_MASK;
  break;
 case 130:
 case 131:
  ext_en_mask = LM36274_EXT_EN_MASK;
  break;
 default:
  return -ENODEV;
 }

 return regmap_update_bits(regmap, lm363x_regulator_desc[id].enable_reg,
     ext_en_mask, ext_en_mask);
}
