
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ltc2952_poweroff {int * gpio_trigger; int * gpio_kill; int * gpio_watchdog; } ;


 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 int * devm_gpiod_get_optional (int *,char*,int ) ;
 int devm_gpiod_put (int *,int *) ;
 scalar_t__ devm_request_irq (int *,int ,int ,int,char*,struct ltc2952_poweroff*) ;
 int gpiod_to_irq (int *) ;
 int ltc2952_poweroff_default (struct ltc2952_poweroff*) ;
 int ltc2952_poweroff_handler ;
 int ltc2952_poweroff_start_wde (struct ltc2952_poweroff*) ;
 struct ltc2952_poweroff* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ltc2952_poweroff_init(struct platform_device *pdev)
{
 int ret;
 struct ltc2952_poweroff *data = platform_get_drvdata(pdev);

 ltc2952_poweroff_default(data);

 data->gpio_watchdog = devm_gpiod_get(&pdev->dev, "watchdog",
          GPIOD_OUT_LOW);
 if (IS_ERR(data->gpio_watchdog)) {
  ret = PTR_ERR(data->gpio_watchdog);
  dev_err(&pdev->dev, "unable to claim gpio \"watchdog\"\n");
  return ret;
 }

 data->gpio_kill = devm_gpiod_get(&pdev->dev, "kill", GPIOD_OUT_LOW);
 if (IS_ERR(data->gpio_kill)) {
  ret = PTR_ERR(data->gpio_kill);
  dev_err(&pdev->dev, "unable to claim gpio \"kill\"\n");
  return ret;
 }

 data->gpio_trigger = devm_gpiod_get_optional(&pdev->dev, "trigger",
           GPIOD_IN);
 if (IS_ERR(data->gpio_trigger)) {





  dev_err(&pdev->dev, "unable to claim gpio \"trigger\"\n");
  data->gpio_trigger = ((void*)0);
 }

 if (devm_request_irq(&pdev->dev, gpiod_to_irq(data->gpio_trigger),
        ltc2952_poweroff_handler,
        (IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING),
        "ltc2952-poweroff",
        data)) {
  if (data->gpio_trigger) {
   dev_warn(&pdev->dev,
     "unable to configure the trigger interrupt\n");
   devm_gpiod_put(&pdev->dev, data->gpio_trigger);
   data->gpio_trigger = ((void*)0);
  }
  dev_info(&pdev->dev,
    "power down trigger input will not be used\n");
  ltc2952_poweroff_start_wde(data);
 }

 return 0;
}
