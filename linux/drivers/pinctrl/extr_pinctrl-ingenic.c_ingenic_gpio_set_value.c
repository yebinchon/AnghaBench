
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ingenic_gpio_chip {TYPE_1__* jzpc; } ;
struct TYPE_2__ {scalar_t__ version; } ;


 scalar_t__ ID_JZ4760 ;
 int JZ4740_GPIO_DATA ;
 int JZ4760_GPIO_PAT0 ;
 int ingenic_gpio_set_bit (struct ingenic_gpio_chip*,int ,int ,int) ;

__attribute__((used)) static void ingenic_gpio_set_value(struct ingenic_gpio_chip *jzgc,
       u8 offset, int value)
{
 if (jzgc->jzpc->version >= ID_JZ4760)
  ingenic_gpio_set_bit(jzgc, JZ4760_GPIO_PAT0, offset, !!value);
 else
  ingenic_gpio_set_bit(jzgc, JZ4740_GPIO_DATA, offset, !!value);
}
