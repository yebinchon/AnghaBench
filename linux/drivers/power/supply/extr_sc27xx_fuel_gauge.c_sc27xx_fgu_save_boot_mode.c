
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 int SC27XX_FGU_MODE_AREA_MASK ;
 int SC27XX_FGU_MODE_AREA_SHIFT ;
 scalar_t__ SC27XX_FGU_USER_AREA_CLEAR ;
 scalar_t__ SC27XX_FGU_USER_AREA_SET ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int sc27xx_fgu_save_boot_mode(struct sc27xx_fgu_data *data,
         int boot_mode)
{
 int ret;

 ret = regmap_update_bits(data->regmap,
     data->base + SC27XX_FGU_USER_AREA_CLEAR,
     SC27XX_FGU_MODE_AREA_MASK,
     SC27XX_FGU_MODE_AREA_MASK);
 if (ret)
  return ret;







 udelay(200);

 ret = regmap_update_bits(data->regmap,
     data->base + SC27XX_FGU_USER_AREA_SET,
     SC27XX_FGU_MODE_AREA_MASK,
     boot_mode << SC27XX_FGU_MODE_AREA_SHIFT);
 if (ret)
  return ret;







 udelay(200);






 return regmap_update_bits(data->regmap,
      data->base + SC27XX_FGU_USER_AREA_CLEAR,
      SC27XX_FGU_MODE_AREA_MASK, 0);
}
