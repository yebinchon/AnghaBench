
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3020 {TYPE_1__* gpio; } ;
struct TYPE_2__ {int gpio; } ;


 size_t V3020_CS ;
 size_t V3020_IO ;
 size_t V3020_WR ;
 int gpio_direction_output (int ,unsigned char) ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void v3020_gpio_write_bit(struct v3020 *chip, unsigned char bit)
{
 gpio_direction_output(chip->gpio[V3020_IO].gpio, bit);
 gpio_set_value(chip->gpio[V3020_CS].gpio, 0);
 gpio_set_value(chip->gpio[V3020_WR].gpio, 0);
 udelay(1);
 gpio_set_value(chip->gpio[V3020_WR].gpio, 1);
 gpio_set_value(chip->gpio[V3020_CS].gpio, 1);
}
