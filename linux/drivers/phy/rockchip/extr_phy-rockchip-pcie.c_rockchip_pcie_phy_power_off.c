
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pcie_phy {int pcie_mutex; TYPE_1__* phy_data; int reg_base; scalar_t__ pwr_cnt; int phy_rst; } ;
struct phy_pcie_instance {scalar_t__ index; } ;
struct phy {int dev; } ;
struct TYPE_2__ {int pcie_laneoff; } ;


 int HIWORD_UPDATE (int,int ,scalar_t__) ;
 scalar_t__ PHY_LANE_IDLE_A_SHIFT ;
 int PHY_LANE_IDLE_MASK ;
 int PHY_LANE_IDLE_OFF ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phy_pcie_instance* phy_get_drvdata (struct phy*) ;
 int regmap_write (int ,int ,int ) ;
 int reset_control_assert (int ) ;
 struct rockchip_pcie_phy* to_pcie_phy (struct phy_pcie_instance*) ;

__attribute__((used)) static int rockchip_pcie_phy_power_off(struct phy *phy)
{
 struct phy_pcie_instance *inst = phy_get_drvdata(phy);
 struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 int err = 0;

 mutex_lock(&rk_phy->pcie_mutex);

 regmap_write(rk_phy->reg_base,
       rk_phy->phy_data->pcie_laneoff,
       HIWORD_UPDATE(PHY_LANE_IDLE_OFF,
       PHY_LANE_IDLE_MASK,
       PHY_LANE_IDLE_A_SHIFT + inst->index));

 if (--rk_phy->pwr_cnt)
  goto err_out;

 err = reset_control_assert(rk_phy->phy_rst);
 if (err) {
  dev_err(&phy->dev, "assert phy_rst err %d\n", err);
  goto err_restore;
 }

err_out:
 mutex_unlock(&rk_phy->pcie_mutex);
 return 0;

err_restore:
 rk_phy->pwr_cnt++;
 regmap_write(rk_phy->reg_base,
       rk_phy->phy_data->pcie_laneoff,
       HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
       PHY_LANE_IDLE_MASK,
       PHY_LANE_IDLE_A_SHIFT + inst->index));
 mutex_unlock(&rk_phy->pcie_mutex);
 return err;
}
