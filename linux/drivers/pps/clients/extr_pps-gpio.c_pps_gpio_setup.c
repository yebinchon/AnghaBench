
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pps_gpio_device_data {int echo_active_ms; int assert_falling_edge; scalar_t__ echo_pin; scalar_t__ gpio_pin; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (TYPE_1__*,char*,...) ;
 scalar_t__ devm_gpiod_get (TYPE_1__*,int *,int ) ;
 scalar_t__ devm_gpiod_get_optional (TYPE_1__*,char*,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 struct pps_gpio_device_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pps_gpio_setup(struct platform_device *pdev)
{
 struct pps_gpio_device_data *data = platform_get_drvdata(pdev);
 struct device_node *np = pdev->dev.of_node;
 int ret;
 u32 value;

 data->gpio_pin = devm_gpiod_get(&pdev->dev,
  ((void*)0),
  GPIOD_IN);
 if (IS_ERR(data->gpio_pin)) {
  dev_err(&pdev->dev,
   "failed to request PPS GPIO\n");
  return PTR_ERR(data->gpio_pin);
 }

 data->echo_pin = devm_gpiod_get_optional(&pdev->dev,
   "echo",
   GPIOD_OUT_LOW);
 if (data->echo_pin) {
  if (IS_ERR(data->echo_pin)) {
   dev_err(&pdev->dev, "failed to request ECHO GPIO\n");
   return PTR_ERR(data->echo_pin);
  }

  ret = of_property_read_u32(np,
   "echo-active-ms",
   &value);
  if (ret) {
   dev_err(&pdev->dev,
    "failed to get echo-active-ms from OF\n");
   return ret;
  }
  data->echo_active_ms = value;

  if (!data->echo_active_ms || data->echo_active_ms > 999) {
   dev_err(&pdev->dev,
    "echo-active-ms: %u - bad value from OF\n",
    data->echo_active_ms);
   return -EINVAL;
  }
 }

 if (of_property_read_bool(np, "assert-falling-edge"))
  data->assert_falling_edge = 1;
 return 0;
}
