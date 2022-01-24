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
struct ufs_qcom_phy {int is_iface_clk_enabled; int /*<<< orphan*/  rx_iface_clk; int /*<<< orphan*/  tx_iface_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ufs_qcom_phy *phy)
{
	if (phy->is_iface_clk_enabled) {
		FUNC0(phy->tx_iface_clk);
		FUNC0(phy->rx_iface_clk);
		phy->is_iface_clk_enabled = false;
	}
}