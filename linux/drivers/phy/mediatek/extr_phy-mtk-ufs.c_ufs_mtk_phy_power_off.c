
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_phy {int mp_clk; int unipro_clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct ufs_mtk_phy* get_ufs_mtk_phy (struct phy*) ;
 int ufs_mtk_phy_set_deep_hibern (struct ufs_mtk_phy*) ;

__attribute__((used)) static int ufs_mtk_phy_power_off(struct phy *generic_phy)
{
 struct ufs_mtk_phy *phy = get_ufs_mtk_phy(generic_phy);

 ufs_mtk_phy_set_deep_hibern(phy);

 clk_disable_unprepare(phy->unipro_clk);
 clk_disable_unprepare(phy->mp_clk);

 return 0;
}
