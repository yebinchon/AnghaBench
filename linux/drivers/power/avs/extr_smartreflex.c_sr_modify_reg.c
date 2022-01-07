
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sr {scalar_t__ ip_type; unsigned int base; } ;


 int ERRCONFIG_STATUS_V1_MASK ;
 unsigned int ERRCONFIG_V1 ;
 unsigned int ERRCONFIG_V2 ;
 int ERRCONFIG_VPBOUNDINTST_V2 ;
 scalar_t__ SR_TYPE_V1 ;
 scalar_t__ SR_TYPE_V2 ;
 int __raw_readl (unsigned int) ;
 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void sr_modify_reg(struct omap_sr *sr, unsigned offset, u32 mask,
     u32 value)
{
 u32 reg_val;
 if (sr->ip_type == SR_TYPE_V1 && offset == ERRCONFIG_V1)
  mask |= ERRCONFIG_STATUS_V1_MASK;
 else if (sr->ip_type == SR_TYPE_V2 && offset == ERRCONFIG_V2)
  mask |= ERRCONFIG_VPBOUNDINTST_V2;

 reg_val = __raw_readl(sr->base + offset);
 reg_val &= ~mask;

 value &= mask;

 reg_val |= value;

 __raw_writel(reg_val, (sr->base + offset));
}
