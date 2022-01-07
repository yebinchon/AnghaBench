
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int is_lane_clks_enabled; int rx_l0_sync_clk; int rx_l1_sync_clk; int tx_l0_sync_clk; int tx_l1_sync_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ufs_qcom_disable_lane_clks(struct ufs_qcom_host *host)
{
 if (!host->is_lane_clks_enabled)
  return;

 clk_disable_unprepare(host->tx_l1_sync_clk);
 clk_disable_unprepare(host->tx_l0_sync_clk);
 clk_disable_unprepare(host->rx_l1_sync_clk);
 clk_disable_unprepare(host->rx_l0_sync_clk);

 host->is_lane_clks_enabled = 0;
}
