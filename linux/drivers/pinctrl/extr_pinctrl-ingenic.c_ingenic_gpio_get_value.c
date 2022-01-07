
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ingenic_gpio_chip {int dummy; } ;


 unsigned int BIT (int ) ;
 int GPIO_PIN ;
 unsigned int ingenic_gpio_read_reg (struct ingenic_gpio_chip*,int ) ;

__attribute__((used)) static inline bool ingenic_gpio_get_value(struct ingenic_gpio_chip *jzgc,
       u8 offset)
{
 unsigned int val = ingenic_gpio_read_reg(jzgc, GPIO_PIN);

 return !!(val & BIT(offset));
}
