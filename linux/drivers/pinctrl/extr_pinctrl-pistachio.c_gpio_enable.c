
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_gpio_bank {int dummy; } ;


 int GPIO_BIT_EN ;
 int gpio_mask_writel (struct pistachio_gpio_bank*,int ,unsigned int,int) ;

__attribute__((used)) static inline void gpio_enable(struct pistachio_gpio_bank *bank,
          unsigned offset)
{
 gpio_mask_writel(bank, GPIO_BIT_EN, offset, 1);
}
