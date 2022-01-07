
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pistachio_gpio_bank {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void gpio_writel(struct pistachio_gpio_bank *bank, u32 val,
          u32 reg)
{
 writel(val, bank->base + reg);
}
