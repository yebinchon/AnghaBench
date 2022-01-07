
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pistachio_gpio_bank {int dummy; } ;


 int gpio_writel (struct pistachio_gpio_bank*,int,int) ;

__attribute__((used)) static inline void gpio_mask_writel(struct pistachio_gpio_bank *bank,
        u32 reg, unsigned int bit, u32 val)
{




 gpio_writel(bank, (0x10000 | val) << bit, reg);
}
