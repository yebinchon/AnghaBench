
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int PIN_CONFIG_INPUT_ENABLE ;
 int PIN_CONFIG_INPUT_SCHMITT_ENABLE ;
 int mt2712_ies_set ;
 int mt2712_smt_set ;
 int mtk_pconf_spec_set_ies_smt_range (struct regmap*,int ,int ,unsigned int,unsigned char,int) ;

__attribute__((used)) static int mt2712_ies_smt_set(struct regmap *regmap, unsigned int pin,
         unsigned char align,
         int value, enum pin_config_param arg)
{
 if (arg == PIN_CONFIG_INPUT_ENABLE)
  return mtk_pconf_spec_set_ies_smt_range(regmap, mt2712_ies_set,
   ARRAY_SIZE(mt2712_ies_set), pin, align, value);
 if (arg == PIN_CONFIG_INPUT_SCHMITT_ENABLE)
  return mtk_pconf_spec_set_ies_smt_range(regmap, mt2712_smt_set,
   ARRAY_SIZE(mt2712_smt_set), pin, align, value);
 return -EINVAL;
}
