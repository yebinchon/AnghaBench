
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {scalar_t__ base; int regmap; } ;


 scalar_t__ SC27XX_FGU_VOLTAGE ;
 int regmap_read (int ,scalar_t__,int*) ;
 int sc27xx_fgu_adc_to_voltage (struct sc27xx_fgu_data*,int) ;

__attribute__((used)) static int sc27xx_fgu_get_vbat_vol(struct sc27xx_fgu_data *data, int *val)
{
 int ret, vol;

 ret = regmap_read(data->regmap, data->base + SC27XX_FGU_VOLTAGE, &vol);
 if (ret)
  return ret;





 *val = sc27xx_fgu_adc_to_voltage(data, vol);

 return 0;
}
