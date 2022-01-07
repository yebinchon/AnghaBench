
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int gpio; } ;


 size_t DS2404_CLK ;
 size_t DS2404_DQ ;
 size_t DS2404_RST ;
 TYPE_1__* ds2404_gpio ;
 int gpio_direction_output (int ,int ) ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ds2404_reset(struct device *dev)
{
 gpio_set_value(ds2404_gpio[DS2404_RST].gpio, 0);
 udelay(1000);
 gpio_set_value(ds2404_gpio[DS2404_RST].gpio, 1);
 gpio_set_value(ds2404_gpio[DS2404_CLK].gpio, 0);
 gpio_direction_output(ds2404_gpio[DS2404_DQ].gpio, 0);
 udelay(10);
}
