
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int is_iface_clk_enabled; int rx_iface_clk; int tx_iface_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ufs_qcom_phy_disable_iface_clk(struct ufs_qcom_phy *phy)
{
 if (phy->is_iface_clk_enabled) {
  clk_disable_unprepare(phy->tx_iface_clk);
  clk_disable_unprepare(phy->rx_iface_clk);
  phy->is_iface_clk_enabled = 0;
 }
}
