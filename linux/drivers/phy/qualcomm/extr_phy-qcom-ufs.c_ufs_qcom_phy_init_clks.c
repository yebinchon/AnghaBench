
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ufs_qcom_phy {int ref_clk; TYPE_1__* dev; int ref_clk_parent; int ref_clk_src; int rx_iface_clk; int tx_iface_clk; } ;
struct TYPE_3__ {int of_node; } ;


 int __ufs_qcom_phy_clk_get (TYPE_1__*,char*,int *,int) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int ufs_qcom_phy_clk_get (TYPE_1__*,char*,int *) ;

int ufs_qcom_phy_init_clks(struct ufs_qcom_phy *phy_common)
{
 int err;

 if (of_device_is_compatible(phy_common->dev->of_node,
    "qcom,msm8996-ufs-phy-qmp-14nm"))
  goto skip_txrx_clk;

 err = ufs_qcom_phy_clk_get(phy_common->dev, "tx_iface_clk",
       &phy_common->tx_iface_clk);
 if (err)
  goto out;

 err = ufs_qcom_phy_clk_get(phy_common->dev, "rx_iface_clk",
       &phy_common->rx_iface_clk);
 if (err)
  goto out;

skip_txrx_clk:
 err = ufs_qcom_phy_clk_get(phy_common->dev, "ref_clk_src",
       &phy_common->ref_clk_src);
 if (err)
  goto out;





 __ufs_qcom_phy_clk_get(phy_common->dev, "ref_clk_parent",
       &phy_common->ref_clk_parent, 0);

 err = ufs_qcom_phy_clk_get(phy_common->dev, "ref_clk",
       &phy_common->ref_clk);

out:
 return err;
}
