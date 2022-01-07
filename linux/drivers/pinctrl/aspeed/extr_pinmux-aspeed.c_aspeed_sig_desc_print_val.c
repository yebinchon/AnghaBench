
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_sig_desc {size_t ip; int mask; int disable; int enable; int reg; } ;


 int __ffs (int) ;
 int * aspeed_pinmux_ips ;
 int pr_debug (char*,int ,int ,int,int ,int,int) ;

__attribute__((used)) static inline void aspeed_sig_desc_print_val(
  const struct aspeed_sig_desc *desc, bool enable, u32 rv)
{
 pr_debug("Want %s%X[0x%08X]=0x%X, got 0x%X from 0x%08X\n",
   aspeed_pinmux_ips[desc->ip], desc->reg,
   desc->mask, enable ? desc->enable : desc->disable,
   (rv & desc->mask) >> __ffs(desc->mask), rv);
}
