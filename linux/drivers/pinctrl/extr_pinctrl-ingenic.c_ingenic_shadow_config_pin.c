
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ingenic_pinctrl {int map; } ;


 int BIT (unsigned int) ;
 unsigned int PINS_PER_GPIO_CHIP ;
 scalar_t__ REG_CLEAR (int ) ;
 scalar_t__ REG_SET (int ) ;
 scalar_t__ X1000_GPIO_PZ_BASE ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void ingenic_shadow_config_pin(struct ingenic_pinctrl *jzpc,
  unsigned int pin, u8 reg, bool set)
{
 unsigned int idx = pin % PINS_PER_GPIO_CHIP;

 regmap_write(jzpc->map, X1000_GPIO_PZ_BASE +
   (set ? REG_SET(reg) : REG_CLEAR(reg)), BIT(idx));
}
