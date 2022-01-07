
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int psy; } ;
struct pm2xxx_charger {int lpn_pin; TYPE_2__ ac_chg; int regu; int charger_wq; TYPE_1__* pdata; int dev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int gpio_irq_number; } ;


 int destroy_workqueue (int ) ;
 int disable_irq_wake (int ) ;
 int flush_scheduled_work () ;
 int free_irq (int ,struct pm2xxx_charger*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 struct pm2xxx_charger* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct pm2xxx_charger*) ;
 int pm2xxx_charger_ac_en (TYPE_2__*,int,int ,int ) ;
 int pm_runtime_disable (int ) ;
 int power_supply_unregister (int ) ;
 int regulator_put (int ) ;

__attribute__((used)) static int pm2xxx_wall_charger_remove(struct i2c_client *i2c_client)
{
 struct pm2xxx_charger *pm2 = i2c_get_clientdata(i2c_client);


 pm_runtime_disable(pm2->dev);

 pm2xxx_charger_ac_en(&pm2->ac_chg, 0, 0, 0);


 disable_irq_wake(gpio_to_irq(pm2->pdata->gpio_irq_number));


 free_irq(gpio_to_irq(pm2->pdata->gpio_irq_number), pm2);


 destroy_workqueue(pm2->charger_wq);

 flush_scheduled_work();


 regulator_put(pm2->regu);

 power_supply_unregister(pm2->ac_chg.psy);

 if (gpio_is_valid(pm2->lpn_pin))
  gpio_free(pm2->lpn_pin);

 kfree(pm2);

 return 0;
}
