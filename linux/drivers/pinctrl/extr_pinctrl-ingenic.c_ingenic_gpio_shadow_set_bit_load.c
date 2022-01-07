
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
struct ingenic_gpio_chip {TYPE_2__ gc; TYPE_1__* jzpc; } ;
struct TYPE_3__ {int map; } ;


 int PINS_PER_GPIO_CHIP ;
 int X1000_GPIO_PZ_GID2LD ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void ingenic_gpio_shadow_set_bit_load(struct ingenic_gpio_chip *jzgc)
{
 regmap_write(jzgc->jzpc->map, X1000_GPIO_PZ_GID2LD,
   jzgc->gc.base / PINS_PER_GPIO_CHIP);
}
