
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9685 {int chip; } ;
struct i2c_client {int dev; } ;


 struct pca9685* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int *) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pca9685_pwm_remove(struct i2c_client *client)
{
 struct pca9685 *pca = i2c_get_clientdata(client);
 int ret;

 ret = pwmchip_remove(&pca->chip);
 if (ret)
  return ret;
 pm_runtime_disable(&client->dev);
 return 0;
}
