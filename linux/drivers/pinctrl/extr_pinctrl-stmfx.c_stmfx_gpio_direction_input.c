
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmfx_pinctrl {TYPE_1__* stmfx; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int map; } ;


 scalar_t__ STMFX_REG_GPIO_DIR ;
 scalar_t__ get_mask (unsigned int) ;
 scalar_t__ get_reg (unsigned int) ;
 struct stmfx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write_bits (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int stmfx_gpio_direction_input(struct gpio_chip *gc, unsigned int offset)
{
 struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
 u32 reg = STMFX_REG_GPIO_DIR + get_reg(offset);
 u32 mask = get_mask(offset);

 return regmap_write_bits(pctl->stmfx->map, reg, mask, 0);
}
