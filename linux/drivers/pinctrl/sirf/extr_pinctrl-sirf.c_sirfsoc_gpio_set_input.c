
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;


 int SIRFSOC_GPIO_CTL_OUT_EN_MASK ;
 int readl (unsigned int) ;
 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void sirfsoc_gpio_set_input(struct sirfsoc_gpio_chip *sgpio,
       unsigned ctrl_offset)
{
 u32 val;

 val = readl(sgpio->chip.regs + ctrl_offset);
 val &= ~SIRFSOC_GPIO_CTL_OUT_EN_MASK;
 writel(val, sgpio->chip.regs + ctrl_offset);
}
