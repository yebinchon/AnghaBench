
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 int SC27XX_FGU_CAP_AREA_MASK ;
 int SC27XX_FGU_DEFAULT_CAP ;
 int SC27XX_FGU_FIRST_POWERTON ;
 int SC27XX_FGU_MODE_AREA_MASK ;
 int SC27XX_FGU_MODE_AREA_SHIFT ;
 scalar_t__ SC27XX_FGU_USER_AREA_STATUS ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static bool sc27xx_fgu_is_first_poweron(struct sc27xx_fgu_data *data)
{
 int ret, status, cap, mode;

 ret = regmap_read(data->regmap,
     data->base + SC27XX_FGU_USER_AREA_STATUS, &status);
 if (ret)
  return 0;





 mode = (status & SC27XX_FGU_MODE_AREA_MASK) >> SC27XX_FGU_MODE_AREA_SHIFT;
 cap = status & SC27XX_FGU_CAP_AREA_MASK;






 if (mode == SC27XX_FGU_FIRST_POWERTON || cap == SC27XX_FGU_DEFAULT_CAP)
  return 1;

 return 0;
}
