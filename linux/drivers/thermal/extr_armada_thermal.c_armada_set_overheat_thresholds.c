
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct armada_thermal_priv {int current_threshold; int current_hysteresis; int syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {unsigned int temp_mask; unsigned int thresh_shift; unsigned int hyst_mask; unsigned int hyst_shift; int syscon_control1_off; } ;


 unsigned int armada_mc_to_reg_hyst (struct armada_thermal_data*,int) ;
 unsigned int armada_mc_to_reg_temp (struct armada_thermal_data*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void armada_set_overheat_thresholds(struct armada_thermal_priv *priv,
        int thresh_mc, int hyst_mc)
{
 struct armada_thermal_data *data = priv->data;
 unsigned int threshold = armada_mc_to_reg_temp(data, thresh_mc);
 unsigned int hysteresis = armada_mc_to_reg_hyst(data, hyst_mc);
 u32 ctrl1;

 regmap_read(priv->syscon, data->syscon_control1_off, &ctrl1);


 if (thresh_mc >= 0) {
  ctrl1 &= ~(data->temp_mask << data->thresh_shift);
  ctrl1 |= threshold << data->thresh_shift;
  priv->current_threshold = thresh_mc;
 }


 if (hyst_mc >= 0) {
  ctrl1 &= ~(data->hyst_mask << data->hyst_shift);
  ctrl1 |= hysteresis << data->hyst_shift;
  priv->current_hysteresis = hyst_mc;
 }

 regmap_write(priv->syscon, data->syscon_control1_off, ctrl1);
}
