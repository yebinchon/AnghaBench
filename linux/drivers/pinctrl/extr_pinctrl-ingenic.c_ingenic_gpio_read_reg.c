
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ingenic_gpio_chip {scalar_t__ reg_base; TYPE_1__* jzpc; } ;
struct TYPE_2__ {int map; } ;


 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static u32 ingenic_gpio_read_reg(struct ingenic_gpio_chip *jzgc, u8 reg)
{
 unsigned int val;

 regmap_read(jzgc->jzpc->map, jzgc->reg_base + reg, &val);

 return (u32) val;
}
