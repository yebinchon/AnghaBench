
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_gpio_chip {struct sirfsoc_gpio_bank* sgpio_bank; } ;
struct sirfsoc_gpio_bank {int dummy; } ;


 unsigned int SIRFSOC_GPIO_BANK_SIZE ;

__attribute__((used)) static inline struct sirfsoc_gpio_bank *
sirfsoc_gpio_to_bank(struct sirfsoc_gpio_chip *sgpio, unsigned int offset)
{
 return &sgpio->sgpio_bank[offset / SIRFSOC_GPIO_BANK_SIZE];
}
