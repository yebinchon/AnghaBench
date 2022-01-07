
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sunxi_pinctrl_desc {int dummy; } ;


 int IRQ_PER_BANK ;
 int sunxi_irq_ctrl_reg_from_bank (struct sunxi_pinctrl_desc const*,int) ;

__attribute__((used)) static inline u32 sunxi_irq_ctrl_reg(const struct sunxi_pinctrl_desc *desc,
         u16 irq)
{
 u8 bank = irq / IRQ_PER_BANK;

 return sunxi_irq_ctrl_reg_from_bank(desc, bank);
}
