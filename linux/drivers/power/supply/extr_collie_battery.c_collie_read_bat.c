
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct collie_bat {scalar_t__ gpio_bat; unsigned long adc_bat_divider; int adc_bat; } ;


 int UCB_SYNC ;
 int bat_lock ;
 int gpio_set_value (scalar_t__,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ucb ;
 int ucb1x00_adc_disable (int ) ;
 int ucb1x00_adc_enable (int ) ;
 unsigned long ucb1x00_adc_read (int ,int ,int ) ;

__attribute__((used)) static unsigned long collie_read_bat(struct collie_bat *bat)
{
 unsigned long value = 0;

 if (bat->gpio_bat < 0 || bat->adc_bat < 0)
  return 0;
 mutex_lock(&bat_lock);
 gpio_set_value(bat->gpio_bat, 1);
 msleep(5);
 ucb1x00_adc_enable(ucb);
 value = ucb1x00_adc_read(ucb, bat->adc_bat, UCB_SYNC);
 ucb1x00_adc_disable(ucb);
 gpio_set_value(bat->gpio_bat, 0);
 mutex_unlock(&bat_lock);
 value = value * 1000000 / bat->adc_bat_divider;

 return value;
}
