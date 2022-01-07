
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie_phy {int pcie_mutex; int init_cnt; int clk_pciephy_ref; int phy_rst; } ;
struct phy_pcie_instance {int dummy; } ;
struct phy {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phy_pcie_instance* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;
 struct rockchip_pcie_phy* to_pcie_phy (struct phy_pcie_instance*) ;

__attribute__((used)) static int rockchip_pcie_phy_init(struct phy *phy)
{
 struct phy_pcie_instance *inst = phy_get_drvdata(phy);
 struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 int err = 0;

 mutex_lock(&rk_phy->pcie_mutex);

 if (rk_phy->init_cnt++)
  goto err_out;

 err = clk_prepare_enable(rk_phy->clk_pciephy_ref);
 if (err) {
  dev_err(&phy->dev, "Fail to enable pcie ref clock.\n");
  goto err_refclk;
 }

 err = reset_control_assert(rk_phy->phy_rst);
 if (err) {
  dev_err(&phy->dev, "assert phy_rst err %d\n", err);
  goto err_reset;
 }

err_out:
 mutex_unlock(&rk_phy->pcie_mutex);
 return 0;

err_reset:

 clk_disable_unprepare(rk_phy->clk_pciephy_ref);
err_refclk:
 rk_phy->init_cnt--;
 mutex_unlock(&rk_phy->pcie_mutex);
 return err;
}
