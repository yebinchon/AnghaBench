
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {int clk; scalar_t__ addr; } ;


 scalar_t__ NMK_GPIO_SLPC ;
 int NUM_BANKS ;
 int clk_disable (int ) ;
 struct nmk_gpio_chip** nmk_gpio_chips ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void nmk_gpio_glitch_slpm_restore(unsigned int *slpm)
{
 int i;

 for (i = 0; i < NUM_BANKS; i++) {
  struct nmk_gpio_chip *chip = nmk_gpio_chips[i];

  if (!chip)
   break;

  writel(slpm[i], chip->addr + NMK_GPIO_SLPC);

  clk_disable(chip->clk);
 }
}
