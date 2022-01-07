
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_phy {int unipro_clk; int dev; int mp_clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 struct ufs_mtk_phy* get_ufs_mtk_phy (struct phy*) ;
 int ufs_mtk_phy_set_active (struct ufs_mtk_phy*) ;

__attribute__((used)) static int ufs_mtk_phy_power_on(struct phy *generic_phy)
{
 struct ufs_mtk_phy *phy = get_ufs_mtk_phy(generic_phy);
 int ret;

 ret = clk_prepare_enable(phy->unipro_clk);
 if (ret) {
  dev_err(phy->dev, "unipro_clk enable failed %d\n", ret);
  goto out;
 }

 ret = clk_prepare_enable(phy->mp_clk);
 if (ret) {
  dev_err(phy->dev, "mp_clk enable failed %d\n", ret);
  goto out_unprepare_unipro_clk;
 }

 ufs_mtk_phy_set_active(phy);

 return 0;

out_unprepare_unipro_clk:
 clk_disable_unprepare(phy->unipro_clk);
out:
 return ret;
}
