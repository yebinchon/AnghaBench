
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pps_gpio_platform_data {int echo_active_ms; scalar_t__ capture_clear; int assert_falling_edge; scalar_t__ echo_pin; int gpio_pin; } ;
struct TYPE_10__ {int mode; int name; int echo; int owner; } ;
struct pps_gpio_device_data {int irq; TYPE_1__* pps; TYPE_3__ info; scalar_t__ capture_clear; int echo_timer; int echo_active_ms; int echo_timeout; scalar_t__ echo_pin; int gpio_pin; int assert_falling_edge; } ;
struct TYPE_11__ {struct pps_gpio_platform_data* platform_data; } ;
struct platform_device {char* name; int id; TYPE_4__ dev; } ;
struct TYPE_9__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PPS_CANWAIT ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int PPS_ECHOASSERT ;
 int PPS_ECHOCLEAR ;
 scalar_t__ PPS_MAX_NAME_LEN ;
 int PPS_OFFSETASSERT ;
 int PPS_OFFSETCLEAR ;
 int PPS_TSFMT_TSPEC ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 int dev_err (TYPE_4__*,char*,int) ;
 int dev_info (int ,char*,int) ;
 struct pps_gpio_device_data* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,int ,struct pps_gpio_device_data*) ;
 int get_irqf_trigger_flags (struct pps_gpio_device_data*) ;
 int gpiod_to_irq (int ) ;
 int msecs_to_jiffies (int ) ;
 int platform_set_drvdata (struct platform_device*,struct pps_gpio_device_data*) ;
 int pps_gpio_echo ;
 int pps_gpio_echo_timer_callback ;
 int pps_gpio_irq_handler ;
 int pps_gpio_setup (struct platform_device*) ;
 TYPE_1__* pps_register_source (TYPE_3__*,int) ;
 int pps_unregister_source (TYPE_1__*) ;
 int snprintf (int ,scalar_t__,char*,char*,int) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pps_gpio_probe(struct platform_device *pdev)
{
 struct pps_gpio_device_data *data;
 int ret;
 int pps_default_params;
 const struct pps_gpio_platform_data *pdata = pdev->dev.platform_data;


 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 platform_set_drvdata(pdev, data);


 if (pdata) {
  data->gpio_pin = pdata->gpio_pin;
  data->echo_pin = pdata->echo_pin;

  data->assert_falling_edge = pdata->assert_falling_edge;
  data->capture_clear = pdata->capture_clear;
  data->echo_active_ms = pdata->echo_active_ms;
 } else {
  ret = pps_gpio_setup(pdev);
  if (ret)
   return -EINVAL;
 }


 ret = gpiod_to_irq(data->gpio_pin);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to map GPIO to IRQ: %d\n", ret);
  return -EINVAL;
 }
 data->irq = ret;


 data->info.mode = PPS_CAPTUREASSERT | PPS_OFFSETASSERT |
  PPS_ECHOASSERT | PPS_CANWAIT | PPS_TSFMT_TSPEC;
 if (data->capture_clear)
  data->info.mode |= PPS_CAPTURECLEAR | PPS_OFFSETCLEAR |
   PPS_ECHOCLEAR;
 data->info.owner = THIS_MODULE;
 snprintf(data->info.name, PPS_MAX_NAME_LEN - 1, "%s.%d",
   pdev->name, pdev->id);
 if (data->echo_pin) {
  data->info.echo = pps_gpio_echo;
  data->echo_timeout = msecs_to_jiffies(data->echo_active_ms);
  timer_setup(&data->echo_timer, pps_gpio_echo_timer_callback, 0);
 }


 pps_default_params = PPS_CAPTUREASSERT | PPS_OFFSETASSERT;
 if (data->capture_clear)
  pps_default_params |= PPS_CAPTURECLEAR | PPS_OFFSETCLEAR;
 data->pps = pps_register_source(&data->info, pps_default_params);
 if (IS_ERR(data->pps)) {
  dev_err(&pdev->dev, "failed to register IRQ %d as PPS source\n",
   data->irq);
  return PTR_ERR(data->pps);
 }


 ret = devm_request_irq(&pdev->dev, data->irq, pps_gpio_irq_handler,
   get_irqf_trigger_flags(data), data->info.name, data);
 if (ret) {
  pps_unregister_source(data->pps);
  dev_err(&pdev->dev, "failed to acquire IRQ %d\n", data->irq);
  return -EINVAL;
 }

 dev_info(data->pps->dev, "Registered IRQ %d as PPS source\n",
   data->irq);

 return 0;
}
