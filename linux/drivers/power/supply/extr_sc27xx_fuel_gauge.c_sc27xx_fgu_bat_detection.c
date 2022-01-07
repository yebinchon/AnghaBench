
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int bat_present; int battery; int lock; int dev; int gpiod; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int dev_err (int ,char*) ;
 int gpiod_get_value_cansleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t sc27xx_fgu_bat_detection(int irq, void *dev_id)
{
 struct sc27xx_fgu_data *data = dev_id;
 int state;

 mutex_lock(&data->lock);

 state = gpiod_get_value_cansleep(data->gpiod);
 if (state < 0) {
  dev_err(data->dev, "failed to get gpio state\n");
  mutex_unlock(&data->lock);
  return IRQ_RETVAL(state);
 }

 data->bat_present = !!state;

 mutex_unlock(&data->lock);

 power_supply_changed(data->battery);
 return IRQ_HANDLED;
}
