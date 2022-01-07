
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_gpio_platform_data {int gpiod; } ;


 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void w1_gpio_write_bit(void *data, u8 bit)
{
 struct w1_gpio_platform_data *pdata = data;

 gpiod_set_value(pdata->gpiod, bit);
}
