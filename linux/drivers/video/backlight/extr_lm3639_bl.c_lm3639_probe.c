
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lm3639_platform_data {int max_brt_led; int init_brt_led; } ;
struct TYPE_7__ {char* name; int max_brightness; int brightness_set; } ;
struct lm3639_chip_data {TYPE_3__* bled; TYPE_1__ cdev_flash; TYPE_1__ cdev_torch; int * dev; TYPE_3__* regmap; struct lm3639_platform_data* pdata; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct device {int dummy; } ;
struct backlight_properties {int max_brightness; int brightness; int type; } ;
struct TYPE_8__ {int dev; } ;


 int BACKLIGHT_RAW ;
 int ENODATA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int PTR_ERR (TYPE_3__*) ;
 int dev_attr_bled_mode ;
 int dev_err (int *,char*,...) ;
 struct lm3639_platform_data* dev_get_platdata (int *) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 TYPE_3__* devm_backlight_device_register (int *,char*,int *,struct lm3639_chip_data*,int *,struct backlight_properties*) ;
 struct lm3639_chip_data* devm_kzalloc (int *,int,int ) ;
 TYPE_3__* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3639_chip_data*) ;
 int led_classdev_register (struct device*,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int lm3639_bled_ops ;
 int lm3639_chip_init (struct lm3639_chip_data*) ;
 int lm3639_flash_brightness_set ;
 int lm3639_regmap ;
 int lm3639_torch_brightness_set ;

__attribute__((used)) static int lm3639_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 int ret;
 struct lm3639_chip_data *pchip;
 struct lm3639_platform_data *pdata = dev_get_platdata(&client->dev);
 struct backlight_properties props;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "i2c functionality check fail.\n");
  return -EOPNOTSUPP;
 }

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "Needs Platform Data.\n");
  return -ENODATA;
 }

 pchip = devm_kzalloc(&client->dev,
        sizeof(struct lm3639_chip_data), GFP_KERNEL);
 if (!pchip)
  return -ENOMEM;

 pchip->pdata = pdata;
 pchip->dev = &client->dev;

 pchip->regmap = devm_regmap_init_i2c(client, &lm3639_regmap);
 if (IS_ERR(pchip->regmap)) {
  ret = PTR_ERR(pchip->regmap);
  dev_err(&client->dev, "fail : allocate register map: %d\n",
   ret);
  return ret;
 }
 i2c_set_clientdata(client, pchip);


 ret = lm3639_chip_init(pchip);
 if (ret < 0) {
  dev_err(&client->dev, "fail : chip init\n");
  goto err_out;
 }


 props.type = BACKLIGHT_RAW;
 props.brightness = pdata->init_brt_led;
 props.max_brightness = pdata->max_brt_led;
 pchip->bled =
     devm_backlight_device_register(pchip->dev, "lm3639_bled",
        pchip->dev, pchip, &lm3639_bled_ops,
        &props);
 if (IS_ERR(pchip->bled)) {
  dev_err(&client->dev, "fail : backlight register\n");
  ret = PTR_ERR(pchip->bled);
  goto err_out;
 }

 ret = device_create_file(&(pchip->bled->dev), &dev_attr_bled_mode);
 if (ret < 0) {
  dev_err(&client->dev, "failed : add sysfs entries\n");
  goto err_out;
 }


 pchip->cdev_flash.name = "lm3639_flash";
 pchip->cdev_flash.max_brightness = 16;
 pchip->cdev_flash.brightness_set = lm3639_flash_brightness_set;
 ret = led_classdev_register((struct device *)
        &client->dev, &pchip->cdev_flash);
 if (ret < 0) {
  dev_err(&client->dev, "fail : flash register\n");
  goto err_flash;
 }


 pchip->cdev_torch.name = "lm3639_torch";
 pchip->cdev_torch.max_brightness = 8;
 pchip->cdev_torch.brightness_set = lm3639_torch_brightness_set;
 ret = led_classdev_register((struct device *)
        &client->dev, &pchip->cdev_torch);
 if (ret < 0) {
  dev_err(&client->dev, "fail : torch register\n");
  goto err_torch;
 }

 return 0;

err_torch:
 led_classdev_unregister(&pchip->cdev_flash);
err_flash:
 device_remove_file(&(pchip->bled->dev), &dev_attr_bled_mode);
err_out:
 return ret;
}
