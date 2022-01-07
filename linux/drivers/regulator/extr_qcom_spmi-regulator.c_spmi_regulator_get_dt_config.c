
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_regulator_init_data {int vs_soft_start_strength; int pin_ctrl_hpm; int pin_ctrl_enable; } ;
struct spmi_regulator {int ocp_retry_delay_ms; int ocp_max_retries; } ;
struct device_node {int dummy; } ;


 int SPMI_REGULATOR_PIN_CTRL_ENABLE_HW_DEFAULT ;
 int SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT ;
 int SPMI_VS_SOFT_START_STR_HW_DEFAULT ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void spmi_regulator_get_dt_config(struct spmi_regulator *vreg,
  struct device_node *node, struct spmi_regulator_init_data *data)
{




 data->pin_ctrl_enable = SPMI_REGULATOR_PIN_CTRL_ENABLE_HW_DEFAULT;
 data->pin_ctrl_hpm = SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT;
 data->vs_soft_start_strength = SPMI_VS_SOFT_START_STR_HW_DEFAULT;


 of_property_read_u32(node, "qcom,ocp-max-retries",
  &vreg->ocp_max_retries);
 of_property_read_u32(node, "qcom,ocp-retry-delay",
  &vreg->ocp_retry_delay_ms);
 of_property_read_u32(node, "qcom,pin-ctrl-enable",
  &data->pin_ctrl_enable);
 of_property_read_u32(node, "qcom,pin-ctrl-hpm", &data->pin_ctrl_hpm);
 of_property_read_u32(node, "qcom,vs-soft-start-strength",
  &data->vs_soft_start_strength);
}
