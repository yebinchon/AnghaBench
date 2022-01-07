
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ingenic_gpio_chip {TYPE_1__* jzpc; } ;
struct TYPE_2__ {scalar_t__ version; } ;


 scalar_t__ ID_JZ4760 ;
 scalar_t__ ID_X1000 ;




 int JZ4740_GPIO_DIR ;
 int JZ4740_GPIO_TRIG ;
 int JZ4760_GPIO_PAT0 ;
 int JZ4760_GPIO_PAT1 ;
 int ingenic_gpio_set_bit (struct ingenic_gpio_chip*,int ,int ,int) ;
 int ingenic_gpio_shadow_set_bit (struct ingenic_gpio_chip*,int ,int ,int) ;
 int ingenic_gpio_shadow_set_bit_load (struct ingenic_gpio_chip*) ;

__attribute__((used)) static void irq_set_type(struct ingenic_gpio_chip *jzgc,
  u8 offset, unsigned int type)
{
 u8 reg1, reg2;

 if (jzgc->jzpc->version >= ID_JZ4760) {
  reg1 = JZ4760_GPIO_PAT1;
  reg2 = JZ4760_GPIO_PAT0;
 } else {
  reg1 = JZ4740_GPIO_TRIG;
  reg2 = JZ4740_GPIO_DIR;
 }

 switch (type) {
 case 130:
  if (jzgc->jzpc->version >= ID_X1000) {
   ingenic_gpio_shadow_set_bit(jzgc, reg2, offset, 1);
   ingenic_gpio_shadow_set_bit(jzgc, reg1, offset, 1);
   ingenic_gpio_shadow_set_bit_load(jzgc);
  } else {
   ingenic_gpio_set_bit(jzgc, reg2, offset, 1);
   ingenic_gpio_set_bit(jzgc, reg1, offset, 1);
  }
  break;
 case 131:
  if (jzgc->jzpc->version >= ID_X1000) {
   ingenic_gpio_shadow_set_bit(jzgc, reg2, offset, 0);
   ingenic_gpio_shadow_set_bit(jzgc, reg1, offset, 1);
   ingenic_gpio_shadow_set_bit_load(jzgc);
  } else {
   ingenic_gpio_set_bit(jzgc, reg2, offset, 0);
   ingenic_gpio_set_bit(jzgc, reg1, offset, 1);
  }
  break;
 case 129:
  if (jzgc->jzpc->version >= ID_X1000) {
   ingenic_gpio_shadow_set_bit(jzgc, reg2, offset, 1);
   ingenic_gpio_shadow_set_bit(jzgc, reg1, offset, 0);
   ingenic_gpio_shadow_set_bit_load(jzgc);
  } else {
   ingenic_gpio_set_bit(jzgc, reg2, offset, 1);
   ingenic_gpio_set_bit(jzgc, reg1, offset, 0);
  }
  break;
 case 128:
 default:
  if (jzgc->jzpc->version >= ID_X1000) {
   ingenic_gpio_shadow_set_bit(jzgc, reg2, offset, 0);
   ingenic_gpio_shadow_set_bit(jzgc, reg1, offset, 0);
   ingenic_gpio_shadow_set_bit_load(jzgc);
  } else {
   ingenic_gpio_set_bit(jzgc, reg2, offset, 0);
   ingenic_gpio_set_bit(jzgc, reg1, offset, 0);
  }
  break;
 }
}
