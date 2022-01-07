
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_mx_efuse {int base; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void meson_mx_efuse_mask_bits(struct meson_mx_efuse *efuse, u32 reg,
         u32 mask, u32 set)
{
 u32 data;

 data = readl(efuse->base + reg);
 data &= ~mask;
 data |= (set & mask);

 writel(data, efuse->base + reg);
}
