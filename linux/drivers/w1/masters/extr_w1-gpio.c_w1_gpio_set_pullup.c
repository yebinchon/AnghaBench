
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_gpio_platform_data {int pullup_duration; int gpiod; } ;


 int gpiod_set_raw_value (int ,int) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static u8 w1_gpio_set_pullup(void *data, int delay)
{
 struct w1_gpio_platform_data *pdata = data;

 if (delay) {
  pdata->pullup_duration = delay;
 } else {
  if (pdata->pullup_duration) {




   gpiod_set_raw_value(pdata->gpiod, 1);
   msleep(pdata->pullup_duration);




   gpiod_set_value(pdata->gpiod, 1);
  }
  pdata->pullup_duration = 0;
 }

 return 0;
}
