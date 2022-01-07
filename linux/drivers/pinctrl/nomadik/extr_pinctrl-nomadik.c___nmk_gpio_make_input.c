
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {scalar_t__ addr; } ;


 int BIT (unsigned int) ;
 scalar_t__ NMK_GPIO_DIRC ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __nmk_gpio_make_input(struct nmk_gpio_chip *nmk_chip,
      unsigned offset)
{
 writel(BIT(offset), nmk_chip->addr + NMK_GPIO_DIRC);
}
