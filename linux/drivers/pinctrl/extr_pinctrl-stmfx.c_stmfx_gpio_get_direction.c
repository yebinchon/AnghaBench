
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmfx_pinctrl {TYPE_1__* stmfx; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int map; } ;


 int STMFX_REG_GPIO_DIR ;
 int get_mask (unsigned int) ;
 int get_reg (unsigned int) ;
 struct stmfx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int,int*) ;

__attribute__((used)) static int stmfx_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
{
 struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
 u32 reg = STMFX_REG_GPIO_DIR + get_reg(offset);
 u32 mask = get_mask(offset);
 u32 val;
 int ret;

 ret = regmap_read(pctl->stmfx->map, reg, &val);





 return ret ? ret : !(val & mask);
}
