
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSCTRL_KEY ;
 int RSCTRL_KEY_MASK ;
 scalar_t__ RSCTRL_RG ;
 int pllctrl_regs ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 scalar_t__ rspll_offset ;

__attribute__((used)) static inline int rsctrl_enable_rspll_write(void)
{
 return regmap_update_bits(pllctrl_regs, rspll_offset + RSCTRL_RG,
      RSCTRL_KEY_MASK, RSCTRL_KEY);
}
