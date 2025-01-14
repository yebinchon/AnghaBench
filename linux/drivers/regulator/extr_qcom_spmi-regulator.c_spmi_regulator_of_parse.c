
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_regulator_init_data {int dummy; } ;
struct spmi_regulator {int logical_type; int ocp_irq; int ocp_work; scalar_t__ ocp_retry_delay_ms; scalar_t__ ocp_max_retries; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {struct device* dev; struct spmi_regulator* driver_data; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_TRIGGER_RISING ;
 int SPMI_FTSMPS426_CLOCK_RATE ;
 int SPMI_HFS430_CLOCK_RATE ;






 int SPMI_REGULATOR_LOGICAL_TYPE_VS ;
 scalar_t__ SPMI_VS_OCP_DEFAULT_MAX_RETRIES ;
 scalar_t__ SPMI_VS_OCP_DEFAULT_RETRY_DELAY_MS ;
 int dev_err (struct device*,char*,int,...) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct spmi_regulator*) ;
 int spmi_regulator_get_dt_config (struct spmi_regulator*,struct device_node*,struct spmi_regulator_init_data*) ;
 int spmi_regulator_init_registers (struct spmi_regulator*,struct spmi_regulator_init_data*) ;
 int spmi_regulator_init_slew_rate (struct spmi_regulator*) ;
 int spmi_regulator_init_slew_rate_ftsmps426 (struct spmi_regulator*,int ) ;
 int spmi_regulator_vs_ocp_isr ;
 int spmi_regulator_vs_ocp_work ;

__attribute__((used)) static int spmi_regulator_of_parse(struct device_node *node,
       const struct regulator_desc *desc,
       struct regulator_config *config)
{
 struct spmi_regulator_init_data data = { };
 struct spmi_regulator *vreg = config->driver_data;
 struct device *dev = config->dev;
 int ret;

 spmi_regulator_get_dt_config(vreg, node, &data);

 if (!vreg->ocp_max_retries)
  vreg->ocp_max_retries = SPMI_VS_OCP_DEFAULT_MAX_RETRIES;
 if (!vreg->ocp_retry_delay_ms)
  vreg->ocp_retry_delay_ms = SPMI_VS_OCP_DEFAULT_RETRY_DELAY_MS;

 ret = spmi_regulator_init_registers(vreg, &data);
 if (ret) {
  dev_err(dev, "common initialization failed, ret=%d\n", ret);
  return ret;
 }

 switch (vreg->logical_type) {
 case 133:
 case 128:
 case 129:
 case 130:
  ret = spmi_regulator_init_slew_rate(vreg);
  if (ret)
   return ret;
  break;
 case 132:
  ret = spmi_regulator_init_slew_rate_ftsmps426(vreg,
      SPMI_FTSMPS426_CLOCK_RATE);
  if (ret)
   return ret;
  break;
 case 131:
  ret = spmi_regulator_init_slew_rate_ftsmps426(vreg,
       SPMI_HFS430_CLOCK_RATE);
  if (ret)
   return ret;
  break;
 default:
  break;
 }

 if (vreg->logical_type != SPMI_REGULATOR_LOGICAL_TYPE_VS)
  vreg->ocp_irq = 0;

 if (vreg->ocp_irq) {
  ret = devm_request_irq(dev, vreg->ocp_irq,
   spmi_regulator_vs_ocp_isr, IRQF_TRIGGER_RISING, "ocp",
   vreg);
  if (ret < 0) {
   dev_err(dev, "failed to request irq %d, ret=%d\n",
    vreg->ocp_irq, ret);
   return ret;
  }

  INIT_DELAYED_WORK(&vreg->ocp_work, spmi_regulator_vs_ocp_work);
 }

 return 0;
}
