
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bq24190_dev_info {int dev; scalar_t__ charger; scalar_t__ battery; } ;


 int bq24190_register_reset (struct bq24190_dev_info*) ;
 int dev_warn (int ,char*,int) ;
 struct bq24190_dev_info* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_put_sync (int ) ;
 int power_supply_unregister (scalar_t__) ;

__attribute__((used)) static int bq24190_remove(struct i2c_client *client)
{
 struct bq24190_dev_info *bdi = i2c_get_clientdata(client);
 int error;

 error = pm_runtime_get_sync(bdi->dev);
 if (error < 0) {
  dev_warn(bdi->dev, "pm_runtime_get failed: %i\n", error);
  pm_runtime_put_noidle(bdi->dev);
 }

 bq24190_register_reset(bdi);
 if (bdi->battery)
  power_supply_unregister(bdi->battery);
 power_supply_unregister(bdi->charger);
 if (error >= 0)
  pm_runtime_put_sync(bdi->dev);
 pm_runtime_dont_use_autosuspend(bdi->dev);
 pm_runtime_disable(bdi->dev);

 return 0;
}
