
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ot200_backlight_data {int current_brightness; } ;
struct backlight_properties {int max_brightness; int brightness; int type; } ;
struct backlight_device {int dummy; } ;


 int BACKLIGHT_RAW ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_DIMM ;
 int GPIO_OUTPUT_AUX1 ;
 int GPIO_OUTPUT_ENABLE ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int MAX_COMP2 ;
 int MFGPT_DOMAIN_ANY ;
 int MFGPT_REG_CMP1 ;
 int MFGPT_REG_CMP2 ;
 int MFGPT_REG_SETUP ;
 int PTR_ERR (struct backlight_device*) ;
 int PWM_SETUP ;
 int cs5535_gpio_set (int ,int ) ;
 int cs5535_mfgpt_alloc_timer (int,int ) ;
 int cs5535_mfgpt_free_timer (int ) ;
 int cs5535_mfgpt_write (int ,int ,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 struct backlight_device* devm_backlight_device_register (int *,int ,int *,struct ot200_backlight_data*,int *,struct backlight_properties*) ;
 scalar_t__ devm_gpio_request (int *,int ,char*) ;
 struct ot200_backlight_data* devm_kzalloc (int *,int,int ) ;
 int ot200_backlight_ops ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int pwm_timer ;

__attribute__((used)) static int ot200_backlight_probe(struct platform_device *pdev)
{
 struct backlight_device *bl;
 struct ot200_backlight_data *data;
 struct backlight_properties props;
 int retval = 0;


 if (devm_gpio_request(&pdev->dev, GPIO_DIMM,
    "ot200 backlight dimmer") < 0) {
  dev_err(&pdev->dev, "failed to request GPIO %d\n", GPIO_DIMM);
  return -ENODEV;
 }


 pwm_timer = cs5535_mfgpt_alloc_timer(7, MFGPT_DOMAIN_ANY);
 if (!pwm_timer) {
  dev_err(&pdev->dev, "MFGPT 7 not available\n");
  return -ENODEV;
 }

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data) {
  retval = -ENOMEM;
  goto error_devm_kzalloc;
 }


 cs5535_gpio_set(GPIO_DIMM, GPIO_OUTPUT_ENABLE);
 cs5535_gpio_set(GPIO_DIMM, GPIO_OUTPUT_AUX1);


 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_CMP1, 0);
 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_CMP2, MAX_COMP2);
 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_SETUP, PWM_SETUP);

 data->current_brightness = 100;
 props.max_brightness = 100;
 props.brightness = 100;
 props.type = BACKLIGHT_RAW;

 bl = devm_backlight_device_register(&pdev->dev, dev_name(&pdev->dev),
     &pdev->dev, data, &ot200_backlight_ops,
     &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  retval = PTR_ERR(bl);
  goto error_devm_kzalloc;
 }

 platform_set_drvdata(pdev, bl);

 return 0;

error_devm_kzalloc:
 cs5535_mfgpt_free_timer(pwm_timer);
 return retval;
}
