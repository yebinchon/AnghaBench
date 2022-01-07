
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct max8973_regulator_platform_data {int enable_ext_control; scalar_t__ junction_temp_warning; int control_flags; scalar_t__ dvs_def_state; int dvs_gpio; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int GFP_KERNEL ;
 scalar_t__ MAX77621_TJINT_WARNING_TEMP_120 ;
 scalar_t__ MAX77621_TJINT_WARNING_TEMP_140 ;
 int MAX8973_CONTROL_BIAS_ENABLE ;
 int MAX8973_CONTROL_CLKADV_TRIP_150mV_PER_US ;
 int MAX8973_CONTROL_CLKADV_TRIP_75mV_PER_US ;
 int MAX8973_CONTROL_CLKADV_TRIP_DISABLED ;
 int MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE ;
 int MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE ;
 int MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE ;
 int MAX8973_CONTROL_REMOTE_SENSE_ENABLE ;
 struct max8973_regulator_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static struct max8973_regulator_platform_data *max8973_parse_dt(
  struct device *dev)
{
 struct max8973_regulator_platform_data *pdata;
 struct device_node *np = dev->of_node;
 int ret;
 u32 pval;
 bool etr_enable;
 bool etr_sensitivity_high;

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 pdata->enable_ext_control = of_property_read_bool(np,
      "maxim,externally-enable");
 pdata->dvs_gpio = of_get_named_gpio(np, "maxim,dvs-gpio", 0);

 ret = of_property_read_u32(np, "maxim,dvs-default-state", &pval);
 if (!ret)
  pdata->dvs_def_state = pval;

 if (of_property_read_bool(np, "maxim,enable-remote-sense"))
  pdata->control_flags |= MAX8973_CONTROL_REMOTE_SENSE_ENABLE;

 if (of_property_read_bool(np, "maxim,enable-falling-slew-rate"))
  pdata->control_flags |=
    MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE;

 if (of_property_read_bool(np, "maxim,enable-active-discharge"))
  pdata->control_flags |=
    MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE;

 if (of_property_read_bool(np, "maxim,enable-frequency-shift"))
  pdata->control_flags |= MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE;

 if (of_property_read_bool(np, "maxim,enable-bias-control"))
  pdata->control_flags |= MAX8973_CONTROL_BIAS_ENABLE;

 etr_enable = of_property_read_bool(np, "maxim,enable-etr");
 etr_sensitivity_high = of_property_read_bool(np,
    "maxim,enable-high-etr-sensitivity");
 if (etr_sensitivity_high)
  etr_enable = 1;

 if (etr_enable) {
  if (etr_sensitivity_high)
   pdata->control_flags |=
    MAX8973_CONTROL_CLKADV_TRIP_75mV_PER_US;
  else
   pdata->control_flags |=
    MAX8973_CONTROL_CLKADV_TRIP_150mV_PER_US;
 } else {
  pdata->control_flags |= MAX8973_CONTROL_CLKADV_TRIP_DISABLED;
 }

 pdata->junction_temp_warning = MAX77621_TJINT_WARNING_TEMP_140;
 ret = of_property_read_u32(np, "junction-warn-millicelsius", &pval);
 if (!ret && (pval <= MAX77621_TJINT_WARNING_TEMP_120))
  pdata->junction_temp_warning = MAX77621_TJINT_WARNING_TEMP_120;

 return pdata;
}
