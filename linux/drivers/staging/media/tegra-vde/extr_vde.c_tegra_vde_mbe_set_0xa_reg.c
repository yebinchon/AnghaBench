
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_vde {int mbe; } ;


 int tegra_vde_writel (struct tegra_vde*,int,int ,int) ;

__attribute__((used)) static void tegra_vde_mbe_set_0xa_reg(struct tegra_vde *vde, int reg, u32 val)
{
 tegra_vde_writel(vde, 0xA0000000 | (reg << 24) | (val & 0xFFFF),
    vde->mbe, 0x80);
 tegra_vde_writel(vde, 0xA0000000 | ((reg + 1) << 24) | (val >> 16),
    vde->mbe, 0x80);
}
