
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sr {unsigned int base; } ;


 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void sr_write_reg(struct omap_sr *sr, unsigned offset, u32 value)
{
 __raw_writel(value, (sr->base + offset));
}
