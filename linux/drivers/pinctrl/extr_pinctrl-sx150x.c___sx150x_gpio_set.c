
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_1__* data; int regmap; } ;
struct TYPE_2__ {int reg_data; } ;


 int BIT (unsigned int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int __sx150x_gpio_set(struct sx150x_pinctrl *pctl, unsigned int offset,
        int value)
{
 return regmap_write_bits(pctl->regmap, pctl->data->reg_data,
     BIT(offset), value ? BIT(offset) : 0);
}
