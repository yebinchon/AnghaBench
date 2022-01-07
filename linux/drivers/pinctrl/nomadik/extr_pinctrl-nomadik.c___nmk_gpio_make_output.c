
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {scalar_t__ addr; } ;


 int BIT (unsigned int) ;
 scalar_t__ NMK_GPIO_DIRS ;
 int __nmk_gpio_set_output (struct nmk_gpio_chip*,unsigned int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __nmk_gpio_make_output(struct nmk_gpio_chip *nmk_chip,
      unsigned offset, int val)
{
 writel(BIT(offset), nmk_chip->addr + NMK_GPIO_DIRS);
 __nmk_gpio_set_output(nmk_chip, offset, val);
}
