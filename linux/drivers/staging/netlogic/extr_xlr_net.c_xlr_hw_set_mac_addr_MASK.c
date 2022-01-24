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
struct xlr_net_priv {int /*<<< orphan*/  base_addr; TYPE_1__* nd; } ;
struct net_device {int* dev_addr; } ;
struct TYPE_2__ {scalar_t__ phy_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_B2B_IPG ; 
 int O_MAC_FILTER_CONFIG__ALL_MCAST_EN ; 
 int O_MAC_FILTER_CONFIG__BROADCAST_EN ; 
 int O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  R_IPG_IFG ; 
 scalar_t__ R_MAC_ADDR0 ; 
 scalar_t__ R_MAC_ADDR_MASK2 ; 
 scalar_t__ R_MAC_ADDR_MASK3 ; 
 scalar_t__ R_MAC_FILTER_CONFIG ; 
 struct xlr_net_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct xlr_net_priv *priv = FUNC0(ndev);

	/* set mac station address */
	FUNC1(priv->base_addr, R_MAC_ADDR0,
		     ((ndev->dev_addr[5] << 24) | (ndev->dev_addr[4] << 16) |
		     (ndev->dev_addr[3] << 8) | (ndev->dev_addr[2])));
	FUNC1(priv->base_addr, R_MAC_ADDR0 + 1,
		     ((ndev->dev_addr[1] << 24) | (ndev->dev_addr[0] << 16)));

	FUNC1(priv->base_addr, R_MAC_ADDR_MASK2, 0xffffffff);
	FUNC1(priv->base_addr, R_MAC_ADDR_MASK2 + 1, 0xffffffff);
	FUNC1(priv->base_addr, R_MAC_ADDR_MASK3, 0xffffffff);
	FUNC1(priv->base_addr, R_MAC_ADDR_MASK3 + 1, 0xffffffff);

	FUNC1(priv->base_addr, R_MAC_FILTER_CONFIG,
		     (1 << O_MAC_FILTER_CONFIG__BROADCAST_EN) |
		     (1 << O_MAC_FILTER_CONFIG__ALL_MCAST_EN) |
		     (1 << O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID));

	if (priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII ||
	    priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
		FUNC2(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
}