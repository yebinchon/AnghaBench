
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct adp8860_bl {TYPE_1__* led; } ;
struct adp8860_backlight_platform_data {int num_leds; } ;
struct TYPE_2__ {int work; int cdev; } ;


 int cancel_work_sync (int *) ;
 struct adp8860_backlight_platform_data* dev_get_platdata (int *) ;
 struct adp8860_bl* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int adp8860_led_remove(struct i2c_client *client)
{
 struct adp8860_backlight_platform_data *pdata =
  dev_get_platdata(&client->dev);
 struct adp8860_bl *data = i2c_get_clientdata(client);
 int i;

 for (i = 0; i < pdata->num_leds; i++) {
  led_classdev_unregister(&data->led[i].cdev);
  cancel_work_sync(&data->led[i].work);
 }

 return 0;
}
