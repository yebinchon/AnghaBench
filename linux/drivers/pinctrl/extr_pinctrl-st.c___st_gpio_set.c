
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {scalar_t__ base; } ;


 int BIT (unsigned int) ;
 scalar_t__ REG_PIO_CLR_POUT ;
 scalar_t__ REG_PIO_SET_POUT ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void __st_gpio_set(struct st_gpio_bank *bank,
 unsigned offset, int value)
{
 if (value)
  writel(BIT(offset), bank->base + REG_PIO_SET_POUT);
 else
  writel(BIT(offset), bank->base + REG_PIO_CLR_POUT);
}
