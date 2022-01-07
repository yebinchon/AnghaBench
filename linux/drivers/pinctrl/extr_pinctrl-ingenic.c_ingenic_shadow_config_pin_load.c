
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_pinctrl {int map; } ;


 unsigned int PINS_PER_GPIO_CHIP ;
 int X1000_GPIO_PZ_GID2LD ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static inline void ingenic_shadow_config_pin_load(struct ingenic_pinctrl *jzpc,
  unsigned int pin)
{
 regmap_write(jzpc->map, X1000_GPIO_PZ_GID2LD, pin / PINS_PER_GPIO_CHIP);
}
