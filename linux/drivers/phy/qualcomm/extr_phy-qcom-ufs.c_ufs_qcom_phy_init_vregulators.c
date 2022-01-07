
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int vddp_ref_clk; int dev; int vdda_phy; int vdda_pll; } ;


 int ufs_qcom_phy_init_vreg (int ,int *,char*) ;

int ufs_qcom_phy_init_vregulators(struct ufs_qcom_phy *phy_common)
{
 int err;

 err = ufs_qcom_phy_init_vreg(phy_common->dev, &phy_common->vdda_pll,
  "vdda-pll");
 if (err)
  goto out;

 err = ufs_qcom_phy_init_vreg(phy_common->dev, &phy_common->vdda_phy,
  "vdda-phy");

 if (err)
  goto out;

 err = ufs_qcom_phy_init_vreg(phy_common->dev, &phy_common->vddp_ref_clk,
         "vddp-ref-clk");

out:
 return err;
}
