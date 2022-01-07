
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc27xx_fgu_data {int table_len; int min_volt; int alarm_cap; scalar_t__ base; int regmap; TYPE_1__* cap_table; int dev; } ;
struct TYPE_2__ {int ocv; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 scalar_t__ SC27XX_FGU_LOW_OVERLOAD ;
 int SC27XX_FGU_LOW_OVERLOAD_MASK ;
 int dev_err (int ,char*) ;
 void* power_supply_ocv2cap_simple (TYPE_1__*,int,int) ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;
 int sc27xx_fgu_adjust_cap (struct sc27xx_fgu_data*,int) ;
 int sc27xx_fgu_get_status (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_vbat_ocv (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_voltage_to_adc (struct sc27xx_fgu_data*,int) ;

__attribute__((used)) static void sc27xx_fgu_capacity_calibration(struct sc27xx_fgu_data *data,
         int cap, bool int_mode)
{
 int ret, ocv, chg_sts, adc;

 ret = sc27xx_fgu_get_vbat_ocv(data, &ocv);
 if (ret) {
  dev_err(data->dev, "get battery ocv error.\n");
  return;
 }

 ret = sc27xx_fgu_get_status(data, &chg_sts);
 if (ret) {
  dev_err(data->dev, "get charger status error.\n");
  return;
 }





 if (chg_sts == POWER_SUPPLY_STATUS_CHARGING)
  return;

 if ((ocv > data->cap_table[0].ocv && cap < 100) || cap > 100) {





  sc27xx_fgu_adjust_cap(data, 100);
 } else if (ocv <= data->cap_table[data->table_len - 1].ocv) {




  sc27xx_fgu_adjust_cap(data, 0);
 } else if ((ocv > data->cap_table[data->table_len - 1].ocv && cap <= 0) ||
     (ocv > data->min_volt && cap <= data->alarm_cap)) {





  int cur_cap = power_supply_ocv2cap_simple(data->cap_table,
         data->table_len, ocv);

  sc27xx_fgu_adjust_cap(data, cur_cap);
 } else if (ocv <= data->min_volt) {





  if (cap > data->alarm_cap) {
   sc27xx_fgu_adjust_cap(data, data->alarm_cap);
  } else {
   int cur_cap;







   cur_cap = power_supply_ocv2cap_simple(data->cap_table,
             data->table_len,
             ocv);
   sc27xx_fgu_adjust_cap(data, cur_cap);
  }

  if (!int_mode)
   return;





  data->min_volt = data->cap_table[data->table_len - 1].ocv;
  data->alarm_cap = power_supply_ocv2cap_simple(data->cap_table,
             data->table_len,
             data->min_volt);

  adc = sc27xx_fgu_voltage_to_adc(data, data->min_volt / 1000);
  regmap_update_bits(data->regmap,
       data->base + SC27XX_FGU_LOW_OVERLOAD,
       SC27XX_FGU_LOW_OVERLOAD_MASK, adc);
 }
}
