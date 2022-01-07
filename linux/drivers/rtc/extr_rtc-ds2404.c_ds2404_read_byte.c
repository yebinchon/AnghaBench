
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct TYPE_2__ {int gpio; } ;


 size_t DS2404_CLK ;
 size_t DS2404_DQ ;
 TYPE_1__* ds2404_gpio ;
 int gpio_direction_input (int ) ;
 scalar_t__ gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u8 ds2404_read_byte(struct device *dev)
{
 int i;
 u8 ret = 0;

 gpio_direction_input(ds2404_gpio[DS2404_DQ].gpio);

 for (i = 0; i < 8; i++) {
  gpio_set_value(ds2404_gpio[DS2404_CLK].gpio, 0);
  udelay(10);
  if (gpio_get_value(ds2404_gpio[DS2404_DQ].gpio))
   ret |= 1 << i;
  gpio_set_value(ds2404_gpio[DS2404_CLK].gpio, 1);
  udelay(10);
 }
 return ret;
}
