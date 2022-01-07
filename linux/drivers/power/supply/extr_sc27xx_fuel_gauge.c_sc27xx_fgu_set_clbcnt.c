
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 int SC27XX_FGU_CLBCNT_MASK ;
 scalar_t__ SC27XX_FGU_CLBCNT_SETH ;
 scalar_t__ SC27XX_FGU_CLBCNT_SETL ;
 int SC27XX_FGU_CLBCNT_SHIFT ;
 scalar_t__ SC27XX_FGU_START ;
 int SC27XX_WRITE_SELCLB_EN ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int sc27xx_fgu_set_clbcnt(struct sc27xx_fgu_data *data, int clbcnt)
{
 int ret;

 ret = regmap_update_bits(data->regmap,
     data->base + SC27XX_FGU_CLBCNT_SETL,
     SC27XX_FGU_CLBCNT_MASK, clbcnt);
 if (ret)
  return ret;

 ret = regmap_update_bits(data->regmap,
     data->base + SC27XX_FGU_CLBCNT_SETH,
     SC27XX_FGU_CLBCNT_MASK,
     clbcnt >> SC27XX_FGU_CLBCNT_SHIFT);
 if (ret)
  return ret;

 return regmap_update_bits(data->regmap, data->base + SC27XX_FGU_START,
     SC27XX_WRITE_SELCLB_EN,
     SC27XX_WRITE_SELCLB_EN);
}
