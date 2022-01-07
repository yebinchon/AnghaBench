
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {scalar_t__ base; } ;


 unsigned int BIT (int) ;
 scalar_t__ REG_PIO_CLR_PC (int) ;
 scalar_t__ REG_PIO_SET_PC (int) ;
 int st_gpio_pin (unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void st_gpio_direction(struct st_gpio_bank *bank,
  unsigned int gpio, unsigned int direction)
{
 int offset = st_gpio_pin(gpio);
 int i = 0;
 for (i = 0; i <= 2; i++) {
  if (direction & BIT(i))
   writel(BIT(offset), bank->base + REG_PIO_SET_PC(i));
  else
   writel(BIT(offset), bank->base + REG_PIO_CLR_PC(i));
 }
}
