
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct sunxi_pinctrl_desc {size_t* irq_bank_map; } ;



__attribute__((used)) static inline u32 sunxi_irq_hw_bank_num(const struct sunxi_pinctrl_desc *desc, u8 bank)
{
 if (!desc->irq_bank_map)
  return bank;
 else
  return desc->irq_bank_map[bank];
}
