
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ufs_mtk_phy {scalar_t__ mmio; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mphy_writel(struct ufs_mtk_phy *phy, u32 val, u32 reg)
{
 writel(val, phy->mmio + reg);
}
