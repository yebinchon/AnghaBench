
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int * dev; scalar_t__ npwm; int * ops; } ;
struct pca9685 {TYPE_1__ chip; int regmap; int period_ns; scalar_t__ duty_ns; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MODE2_INVRT ;
 int MODE2_OUTDRV ;
 int PCA9685_ALL_LED_OFF_H ;
 int PCA9685_ALL_LED_OFF_L ;
 int PCA9685_DEFAULT_PERIOD ;
 scalar_t__ PCA9685_MAXCHAN ;
 int PCA9685_MODE2 ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ device_property_read_bool (int *,char*) ;
 struct pca9685* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct pca9685*) ;
 int pca9685_pwm_gpio_probe (struct pca9685*) ;
 int pca9685_pwm_ops ;
 int pca9685_regmap_i2c_config ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pwmchip_add (TYPE_1__*) ;
 int pwmchip_remove (TYPE_1__*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int pca9685_pwm_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pca9685 *pca;
 int ret;
 int mode2;

 pca = devm_kzalloc(&client->dev, sizeof(*pca), GFP_KERNEL);
 if (!pca)
  return -ENOMEM;

 pca->regmap = devm_regmap_init_i2c(client, &pca9685_regmap_i2c_config);
 if (IS_ERR(pca->regmap)) {
  ret = PTR_ERR(pca->regmap);
  dev_err(&client->dev, "Failed to initialize register map: %d\n",
   ret);
  return ret;
 }
 pca->duty_ns = 0;
 pca->period_ns = PCA9685_DEFAULT_PERIOD;

 i2c_set_clientdata(client, pca);

 regmap_read(pca->regmap, PCA9685_MODE2, &mode2);

 if (device_property_read_bool(&client->dev, "invert"))
  mode2 |= MODE2_INVRT;
 else
  mode2 &= ~MODE2_INVRT;

 if (device_property_read_bool(&client->dev, "open-drain"))
  mode2 &= ~MODE2_OUTDRV;
 else
  mode2 |= MODE2_OUTDRV;

 regmap_write(pca->regmap, PCA9685_MODE2, mode2);


 regmap_write(pca->regmap, PCA9685_ALL_LED_OFF_L, 0);
 regmap_write(pca->regmap, PCA9685_ALL_LED_OFF_H, 0);

 pca->chip.ops = &pca9685_pwm_ops;

 pca->chip.npwm = PCA9685_MAXCHAN + 1;

 pca->chip.dev = &client->dev;
 pca->chip.base = -1;

 ret = pwmchip_add(&pca->chip);
 if (ret < 0)
  return ret;

 ret = pca9685_pwm_gpio_probe(pca);
 if (ret < 0) {
  pwmchip_remove(&pca->chip);
  return ret;
 }


 pm_runtime_set_active(&client->dev);




 pm_runtime_enable(&client->dev);

 return 0;
}
