
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie_phy {int pcie_mutex; int clk_pciephy_ref; scalar_t__ init_cnt; } ;
struct phy_pcie_instance {int dummy; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phy_pcie_instance* phy_get_drvdata (struct phy*) ;
 struct rockchip_pcie_phy* to_pcie_phy (struct phy_pcie_instance*) ;

__attribute__((used)) static int rockchip_pcie_phy_exit(struct phy *phy)
{
 struct phy_pcie_instance *inst = phy_get_drvdata(phy);
 struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);

 mutex_lock(&rk_phy->pcie_mutex);

 if (--rk_phy->init_cnt)
  goto err_init_cnt;

 clk_disable_unprepare(rk_phy->clk_pciephy_ref);

err_init_cnt:
 mutex_unlock(&rk_phy->pcie_mutex);
 return 0;
}
