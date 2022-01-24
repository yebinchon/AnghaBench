#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ufs_qcom_host {int is_lane_clks_enabled; int /*<<< orphan*/  rx_l0_sync_clk; int /*<<< orphan*/  tx_l0_sync_clk; int /*<<< orphan*/  rx_l1_sync_clk; int /*<<< orphan*/  tx_l1_sync_clk; TYPE_1__* hba; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ufs_qcom_host *host)
{
	int err = 0;
	struct device *dev = host->hba->dev;

	if (host->is_lane_clks_enabled)
		return 0;

	err = FUNC1(dev, "rx_lane0_sync_clk",
		host->rx_l0_sync_clk);
	if (err)
		goto out;

	err = FUNC1(dev, "tx_lane0_sync_clk",
		host->tx_l0_sync_clk);
	if (err)
		goto disable_rx_l0;

	err = FUNC1(dev, "rx_lane1_sync_clk",
			host->rx_l1_sync_clk);
	if (err)
		goto disable_tx_l0;

	err = FUNC1(dev, "tx_lane1_sync_clk",
			host->tx_l1_sync_clk);
	if (err)
		goto disable_rx_l1;

	host->is_lane_clks_enabled = true;
	goto out;

disable_rx_l1:
	FUNC0(host->rx_l1_sync_clk);
disable_tx_l0:
	FUNC0(host->tx_l0_sync_clk);
disable_rx_l0:
	FUNC0(host->rx_l0_sync_clk);
out:
	return err;
}