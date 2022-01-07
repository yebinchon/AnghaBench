
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dutycycle_unit; int min_uV_dutycycle; int max_uV_dutycycle; } ;
struct TYPE_4__ {int continuous_voltage_range; int * ops; } ;
struct pwm_regulator_data {TYPE_3__ continuous; TYPE_1__ desc; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int EINVAL ;
 int of_property_read_u32 (int ,char*,int*) ;
 int of_property_read_u32_array (int ,char*,int*,int) ;
 int pwm_regulator_voltage_continuous_ops ;

__attribute__((used)) static int pwm_regulator_init_continuous(struct platform_device *pdev,
      struct pwm_regulator_data *drvdata)
{
 u32 dutycycle_range[2] = { 0, 100 };
 u32 dutycycle_unit = 100;

 drvdata->desc.ops = &pwm_regulator_voltage_continuous_ops;
 drvdata->desc.continuous_voltage_range = 1;

 of_property_read_u32_array(pdev->dev.of_node,
       "pwm-dutycycle-range",
       dutycycle_range, 2);
 of_property_read_u32(pdev->dev.of_node, "pwm-dutycycle-unit",
        &dutycycle_unit);

 if (dutycycle_range[0] > dutycycle_unit ||
     dutycycle_range[1] > dutycycle_unit)
  return -EINVAL;

 drvdata->continuous.dutycycle_unit = dutycycle_unit;
 drvdata->continuous.min_uV_dutycycle = dutycycle_range[0];
 drvdata->continuous.max_uV_dutycycle = dutycycle_range[1];

 return 0;
}
