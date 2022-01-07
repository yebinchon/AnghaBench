
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_qcom_host {int tx_l1_sync_clk; int rx_l1_sync_clk; TYPE_1__* hba; int tx_l0_sync_clk; int rx_l0_sync_clk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int lanes_per_direction; struct device* dev; } ;


 scalar_t__ has_acpi_companion (struct device*) ;
 int ufs_qcom_host_clk_get (struct device*,char*,int *,int) ;

__attribute__((used)) static int ufs_qcom_init_lane_clks(struct ufs_qcom_host *host)
{
 int err = 0;
 struct device *dev = host->hba->dev;

 if (has_acpi_companion(dev))
  return 0;

 err = ufs_qcom_host_clk_get(dev, "rx_lane0_sync_clk",
     &host->rx_l0_sync_clk, 0);
 if (err)
  goto out;

 err = ufs_qcom_host_clk_get(dev, "tx_lane0_sync_clk",
     &host->tx_l0_sync_clk, 0);
 if (err)
  goto out;


 if (host->hba->lanes_per_direction > 1) {
  err = ufs_qcom_host_clk_get(dev, "rx_lane1_sync_clk",
   &host->rx_l1_sync_clk, 0);
  if (err)
   goto out;

  err = ufs_qcom_host_clk_get(dev, "tx_lane1_sync_clk",
   &host->tx_l1_sync_clk, 1);
 }
out:
 return err;
}
