
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sunxi_pinctrl_desc {int dummy; } ;


 scalar_t__ IRQ_CTRL_REG ;
 int IRQ_MEM_SIZE ;
 int sunxi_irq_hw_bank_num (struct sunxi_pinctrl_desc const*,int ) ;

__attribute__((used)) static inline u32 sunxi_irq_ctrl_reg_from_bank(const struct sunxi_pinctrl_desc *desc, u8 bank)
{
 return IRQ_CTRL_REG + sunxi_irq_hw_bank_num(desc, bank) * IRQ_MEM_SIZE;
}
