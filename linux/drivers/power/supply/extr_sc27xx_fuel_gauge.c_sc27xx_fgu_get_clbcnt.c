
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 int SC27XX_FGU_CLBCNT_MASK ;
 int SC27XX_FGU_CLBCNT_SHIFT ;
 scalar_t__ SC27XX_FGU_CLBCNT_VALH ;
 scalar_t__ SC27XX_FGU_CLBCNT_VALL ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static int sc27xx_fgu_get_clbcnt(struct sc27xx_fgu_data *data, int *clb_cnt)
{
 int ccl, cch, ret;

 ret = regmap_read(data->regmap, data->base + SC27XX_FGU_CLBCNT_VALL,
     &ccl);
 if (ret)
  return ret;

 ret = regmap_read(data->regmap, data->base + SC27XX_FGU_CLBCNT_VALH,
     &cch);
 if (ret)
  return ret;

 *clb_cnt = ccl & SC27XX_FGU_CLBCNT_MASK;
 *clb_cnt |= (cch & SC27XX_FGU_CLBCNT_MASK) << SC27XX_FGU_CLBCNT_SHIFT;

 return 0;
}
