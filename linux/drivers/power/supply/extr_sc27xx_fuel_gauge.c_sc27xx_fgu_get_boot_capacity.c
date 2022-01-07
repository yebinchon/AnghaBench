
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int internal_resist; int table_len; int cap_table; scalar_t__ base; int regmap; } ;


 scalar_t__ SC27XX_FGU_CLBCNT_QMAXL ;
 scalar_t__ SC27XX_FGU_CUR_BASIC_ADC ;
 int SC27XX_FGU_NORMAIL_POWERTON ;
 scalar_t__ SC27XX_FGU_POCV ;
 int power_supply_ocv2cap_simple (int ,int ,int) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int sc27xx_fgu_adc_to_current (struct sc27xx_fgu_data*,scalar_t__) ;
 int sc27xx_fgu_adc_to_voltage (struct sc27xx_fgu_data*,int) ;
 int sc27xx_fgu_is_first_poweron (struct sc27xx_fgu_data*) ;
 int sc27xx_fgu_read_last_cap (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_save_boot_mode (struct sc27xx_fgu_data*,int ) ;
 int sc27xx_fgu_save_last_cap (struct sc27xx_fgu_data*,int) ;

__attribute__((used)) static int sc27xx_fgu_get_boot_capacity(struct sc27xx_fgu_data *data, int *cap)
{
 int volt, cur, oci, ocv, ret;
 bool is_first_poweron = sc27xx_fgu_is_first_poweron(data);






 if (!is_first_poweron) {
  ret = sc27xx_fgu_read_last_cap(data, cap);
  if (ret)
   return ret;

  return sc27xx_fgu_save_boot_mode(data, SC27XX_FGU_NORMAIL_POWERTON);
 }





 ret = regmap_read(data->regmap, data->base + SC27XX_FGU_CLBCNT_QMAXL,
     &cur);
 if (ret)
  return ret;

 cur <<= 1;
 oci = sc27xx_fgu_adc_to_current(data, cur - SC27XX_FGU_CUR_BASIC_ADC);






 ret = regmap_read(data->regmap, data->base + SC27XX_FGU_POCV, &volt);
 if (ret)
  return ret;

 volt = sc27xx_fgu_adc_to_voltage(data, volt);
 ocv = volt * 1000 - oci * data->internal_resist;





 *cap = power_supply_ocv2cap_simple(data->cap_table, data->table_len,
        ocv);

 ret = sc27xx_fgu_save_last_cap(data, *cap);
 if (ret)
  return ret;

 return sc27xx_fgu_save_boot_mode(data, SC27XX_FGU_NORMAIL_POWERTON);
}
