
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ingenic_gpio_chip {scalar_t__ reg_base; TYPE_1__* jzpc; } ;
struct TYPE_2__ {int map; } ;


 int BIT (scalar_t__) ;
 scalar_t__ REG_CLEAR (scalar_t__) ;
 scalar_t__ REG_SET (scalar_t__) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void ingenic_gpio_set_bit(struct ingenic_gpio_chip *jzgc,
  u8 reg, u8 offset, bool set)
{
 if (set)
  reg = REG_SET(reg);
 else
  reg = REG_CLEAR(reg);

 regmap_write(jzgc->jzpc->map, jzgc->reg_base + reg, BIT(offset));
}
