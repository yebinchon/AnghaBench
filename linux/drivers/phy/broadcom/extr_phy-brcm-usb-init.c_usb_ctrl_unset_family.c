
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct brcm_usb_init_params {size_t* usb_reg_bits_map; void* ctrl_regs; } ;


 size_t brcmusb_readl (void*) ;
 int brcmusb_writel (size_t,void*) ;

__attribute__((used)) static inline
void usb_ctrl_unset_family(struct brcm_usb_init_params *params,
      u32 reg_offset, u32 field)
{
 u32 mask;
 void *reg;

 mask = params->usb_reg_bits_map[field];
 reg = params->ctrl_regs + reg_offset;
 brcmusb_writel(brcmusb_readl(reg) & ~mask, reg);
}
