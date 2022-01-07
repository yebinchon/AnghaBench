
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3639_chip_data {TYPE_1__* bled; int cdev_flash; int cdev_torch; int regmap; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int REG_ENABLE ;
 int dev_attr_bled_mode ;
 int device_remove_file (int *,int *) ;
 struct lm3639_chip_data* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lm3639_remove(struct i2c_client *client)
{
 struct lm3639_chip_data *pchip = i2c_get_clientdata(client);

 regmap_write(pchip->regmap, REG_ENABLE, 0x00);

 led_classdev_unregister(&pchip->cdev_torch);
 led_classdev_unregister(&pchip->cdev_flash);
 if (pchip->bled)
  device_remove_file(&(pchip->bled->dev), &dev_attr_bled_mode);
 return 0;
}
