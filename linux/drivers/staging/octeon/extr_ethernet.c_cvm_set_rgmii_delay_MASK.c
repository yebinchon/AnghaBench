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
typedef  scalar_t__ u32 ;
struct octeon_ethernet {int /*<<< orphan*/  phy_mode; struct device_node* of_node; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_RGMII ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_RGMII_ID ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_RGMII_RXID ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_RGMII_TXID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct octeon_ethernet *priv, int iface,
				int port)
{
	struct device_node *np = priv->of_node;
	u32 delay_value;
	bool rx_delay;
	bool tx_delay;

	/* By default, both RX/TX delay is enabled in
	 * __cvmx_helper_rgmii_enable().
	 */
	rx_delay = true;
	tx_delay = true;

	if (!FUNC3(np, "rx-delay", &delay_value)) {
		FUNC2(FUNC0(port, iface), delay_value);
		rx_delay = delay_value > 0;
	}
	if (!FUNC3(np, "tx-delay", &delay_value)) {
		FUNC2(FUNC1(port, iface), delay_value);
		tx_delay = delay_value > 0;
	}

	if (!rx_delay && !tx_delay)
		priv->phy_mode = PHY_INTERFACE_MODE_RGMII_ID;
	else if (!rx_delay)
		priv->phy_mode = PHY_INTERFACE_MODE_RGMII_RXID;
	else if (!tx_delay)
		priv->phy_mode = PHY_INTERFACE_MODE_RGMII_TXID;
	else
		priv->phy_mode = PHY_INTERFACE_MODE_RGMII;
}