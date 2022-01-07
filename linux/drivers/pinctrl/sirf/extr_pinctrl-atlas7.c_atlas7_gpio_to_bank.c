
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atlas7_gpio_chip {struct atlas7_gpio_bank* banks; } ;
struct atlas7_gpio_bank {int dummy; } ;


 size_t GPIO_TO_BANK (int ) ;

__attribute__((used)) static inline struct
atlas7_gpio_bank *atlas7_gpio_to_bank(struct atlas7_gpio_chip *a7gc, u32 gpio)
{
 return &a7gc->banks[GPIO_TO_BANK(gpio)];
}
