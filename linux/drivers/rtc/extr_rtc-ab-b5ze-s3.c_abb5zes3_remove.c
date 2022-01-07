
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct abb5zes3_rtc_data {scalar_t__ irq; } ;


 struct abb5zes3_rtc_data* dev_get_drvdata (int *) ;
 int device_init_wakeup (int *,int) ;

__attribute__((used)) static int abb5zes3_remove(struct i2c_client *client)
{
 struct abb5zes3_rtc_data *rtc_data = dev_get_drvdata(&client->dev);

 if (rtc_data->irq > 0)
  device_init_wakeup(&client->dev, 0);

 return 0;
}
