
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 int SC27XX_FGU_CAP_AREA_MASK ;
 scalar_t__ SC27XX_FGU_USER_AREA_STATUS ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static int sc27xx_fgu_read_last_cap(struct sc27xx_fgu_data *data, int *cap)
{
 int ret, value;

 ret = regmap_read(data->regmap,
     data->base + SC27XX_FGU_USER_AREA_STATUS, &value);
 if (ret)
  return ret;

 *cap = value & SC27XX_FGU_CAP_AREA_MASK;
 return 0;
}
