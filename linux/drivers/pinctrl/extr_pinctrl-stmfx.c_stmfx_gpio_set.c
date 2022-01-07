
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmfx_pinctrl {TYPE_1__* stmfx; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int map; } ;


 scalar_t__ STMFX_REG_GPO_CLR ;
 scalar_t__ STMFX_REG_GPO_SET ;
 scalar_t__ get_mask (unsigned int) ;
 scalar_t__ get_reg (unsigned int) ;
 struct stmfx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write_bits (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void stmfx_gpio_set(struct gpio_chip *gc, unsigned int offset, int value)
{
 struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
 u32 reg = value ? STMFX_REG_GPO_SET : STMFX_REG_GPO_CLR;
 u32 mask = get_mask(offset);

 regmap_write_bits(pctl->stmfx->map, reg + get_reg(offset),
     mask, mask);
}
