
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {scalar_t__ addr; int clk; } ;


 scalar_t__ NMK_GPIO_SLPC ;
 int NUM_BANKS ;
 int clk_enable (int ) ;
 struct nmk_gpio_chip** nmk_gpio_chips ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void nmk_gpio_glitch_slpm_init(unsigned int *slpm)
{
 int i;

 for (i = 0; i < NUM_BANKS; i++) {
  struct nmk_gpio_chip *chip = nmk_gpio_chips[i];
  unsigned int temp = slpm[i];

  if (!chip)
   break;

  clk_enable(chip->clk);

  slpm[i] = readl(chip->addr + NMK_GPIO_SLPC);
  writel(temp, chip->addr + NMK_GPIO_SLPC);
 }
}
