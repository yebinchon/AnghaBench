
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3020 {TYPE_1__* gpio; } ;
struct TYPE_2__ {int gpio; } ;


 size_t V3020_CS ;
 size_t V3020_IO ;
 size_t V3020_RD ;
 int gpio_direction_input (int ) ;
 int gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char v3020_gpio_read_bit(struct v3020 *chip)
{
 int bit;

 gpio_direction_input(chip->gpio[V3020_IO].gpio);
 gpio_set_value(chip->gpio[V3020_CS].gpio, 0);
 gpio_set_value(chip->gpio[V3020_RD].gpio, 0);
 udelay(1);
 bit = !!gpio_get_value(chip->gpio[V3020_IO].gpio);
 udelay(1);
 gpio_set_value(chip->gpio[V3020_RD].gpio, 1);
 gpio_set_value(chip->gpio[V3020_CS].gpio, 1);

 return bit;
}
