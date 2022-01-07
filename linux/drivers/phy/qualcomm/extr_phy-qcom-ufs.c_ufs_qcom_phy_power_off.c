
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ reg; } ;
struct ufs_qcom_phy {int ufs_reset; TYPE_2__ vdda_phy; int dev; TYPE_2__ vdda_pll; TYPE_2__ vddp_ref_clk; TYPE_1__* phy_spec_ops; } ;
struct phy {int dummy; } ;
struct TYPE_3__ {int (* power_control ) (struct ufs_qcom_phy*,int) ;} ;


 struct ufs_qcom_phy* get_ufs_qcom_phy (struct phy*) ;
 int reset_control_assert (int ) ;
 int stub1 (struct ufs_qcom_phy*,int) ;
 int ufs_qcom_phy_disable_iface_clk (struct ufs_qcom_phy*) ;
 int ufs_qcom_phy_disable_ref_clk (struct ufs_qcom_phy*) ;
 int ufs_qcom_phy_disable_vreg (int ,TYPE_2__*) ;

int ufs_qcom_phy_power_off(struct phy *generic_phy)
{
 struct ufs_qcom_phy *phy_common = get_ufs_qcom_phy(generic_phy);

 phy_common->phy_spec_ops->power_control(phy_common, 0);

 if (phy_common->vddp_ref_clk.reg)
  ufs_qcom_phy_disable_vreg(phy_common->dev,
       &phy_common->vddp_ref_clk);
 ufs_qcom_phy_disable_ref_clk(phy_common);
 ufs_qcom_phy_disable_iface_clk(phy_common);

 ufs_qcom_phy_disable_vreg(phy_common->dev, &phy_common->vdda_pll);
 ufs_qcom_phy_disable_vreg(phy_common->dev, &phy_common->vdda_phy);
 reset_control_assert(phy_common->ufs_reset);
 return 0;
}
