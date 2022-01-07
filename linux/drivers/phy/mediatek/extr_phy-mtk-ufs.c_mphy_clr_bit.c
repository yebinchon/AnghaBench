
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_mtk_phy {int dummy; } ;


 int mphy_readl (struct ufs_mtk_phy*,int ) ;
 int mphy_writel (struct ufs_mtk_phy*,int ,int ) ;

__attribute__((used)) static void mphy_clr_bit(struct ufs_mtk_phy *phy, u32 reg, u32 bit)
{
 u32 val;

 val = mphy_readl(phy, reg);
 val &= ~bit;
 mphy_writel(phy, val, reg);
}
