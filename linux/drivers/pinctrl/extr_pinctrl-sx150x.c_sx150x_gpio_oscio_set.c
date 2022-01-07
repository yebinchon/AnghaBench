
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_3__* data; int regmap; } ;
struct TYPE_4__ {int reg_clock; } ;
struct TYPE_5__ {TYPE_1__ x789; } ;
struct TYPE_6__ {TYPE_2__ pri; } ;


 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int sx150x_gpio_oscio_set(struct sx150x_pinctrl *pctl,
     int value)
{
 return regmap_write(pctl->regmap,
       pctl->data->pri.x789.reg_clock,
       (value ? 0x1f : 0x10));
}
