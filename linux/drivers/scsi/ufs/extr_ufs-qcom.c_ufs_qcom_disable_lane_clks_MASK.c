#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ufs_qcom_host {int is_lane_clks_enabled; int /*<<< orphan*/  rx_l0_sync_clk; int /*<<< orphan*/  rx_l1_sync_clk; int /*<<< orphan*/  tx_l0_sync_clk; int /*<<< orphan*/  tx_l1_sync_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ufs_qcom_host *host)
{
	if (!host->is_lane_clks_enabled)
		return;

	FUNC0(host->tx_l1_sync_clk);
	FUNC0(host->tx_l0_sync_clk);
	FUNC0(host->rx_l1_sync_clk);
	FUNC0(host->rx_l0_sync_clk);

	host->is_lane_clks_enabled = false;
}