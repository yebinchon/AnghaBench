
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sr {unsigned int base; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline u32 sr_read_reg(struct omap_sr *sr, unsigned offset)
{
 return __raw_readl(sr->base + offset);
}
