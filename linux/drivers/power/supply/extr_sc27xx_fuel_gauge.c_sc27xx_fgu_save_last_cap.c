
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 int SC27XX_FGU_CAP_AREA_MASK ;
 scalar_t__ SC27XX_FGU_USER_AREA_CLEAR ;
 scalar_t__ SC27XX_FGU_USER_AREA_SET ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int sc27xx_fgu_save_last_cap(struct sc27xx_fgu_data *data, int cap)
{
 int ret;

 ret = regmap_update_bits(data->regmap,
     data->base + SC27XX_FGU_USER_AREA_CLEAR,
     SC27XX_FGU_CAP_AREA_MASK,
     SC27XX_FGU_CAP_AREA_MASK);
 if (ret)
  return ret;







 udelay(200);

 ret = regmap_update_bits(data->regmap,
     data->base + SC27XX_FGU_USER_AREA_SET,
     SC27XX_FGU_CAP_AREA_MASK, cap);
 if (ret)
  return ret;







 udelay(200);






 return regmap_update_bits(data->regmap,
      data->base + SC27XX_FGU_USER_AREA_CLEAR,
      SC27XX_FGU_CAP_AREA_MASK, 0);
}
