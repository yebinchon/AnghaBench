
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pwm_voltages {int dummy; } ;
struct TYPE_4__ {unsigned int n_voltages; int * ops; } ;
struct pwm_regulator_data {int state; TYPE_1__ desc; struct pwm_voltages* duty_cycle_table; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct pwm_voltages* devm_kzalloc (TYPE_2__*,unsigned int,int ) ;
 int of_find_property (struct device_node*,char*,unsigned int*) ;
 int of_property_read_u32_array (struct device_node*,char*,int *,unsigned int) ;
 int pwm_regulator_voltage_table_ops ;

__attribute__((used)) static int pwm_regulator_init_table(struct platform_device *pdev,
        struct pwm_regulator_data *drvdata)
{
 struct device_node *np = pdev->dev.of_node;
 struct pwm_voltages *duty_cycle_table;
 unsigned int length = 0;
 int ret;

 of_find_property(np, "voltage-table", &length);

 if ((length < sizeof(*duty_cycle_table)) ||
     (length % sizeof(*duty_cycle_table))) {
  dev_err(&pdev->dev, "voltage-table length(%d) is invalid\n",
   length);
  return -EINVAL;
 }

 duty_cycle_table = devm_kzalloc(&pdev->dev, length, GFP_KERNEL);
 if (!duty_cycle_table)
  return -ENOMEM;

 ret = of_property_read_u32_array(np, "voltage-table",
      (u32 *)duty_cycle_table,
      length / sizeof(u32));
 if (ret) {
  dev_err(&pdev->dev, "Failed to read voltage-table: %d\n", ret);
  return ret;
 }

 drvdata->state = -EINVAL;
 drvdata->duty_cycle_table = duty_cycle_table;
 drvdata->desc.ops = &pwm_regulator_voltage_table_ops;
 drvdata->desc.n_voltages = length / sizeof(*duty_cycle_table);

 return 0;
}
