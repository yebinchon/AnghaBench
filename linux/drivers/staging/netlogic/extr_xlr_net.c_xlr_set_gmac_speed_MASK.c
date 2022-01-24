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
struct xlr_net_priv {int phy_speed; int /*<<< orphan*/  port_id; int /*<<< orphan*/  base_addr; } ;
struct phy_device {scalar_t__ interface; int speed; } ;

/* Variables and functions */
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  R_CORECONTROL ; 
 int /*<<< orphan*/  R_INTERFACE_CONTROL ; 
 int /*<<< orphan*/  R_MAC_CONFIG_2 ; 
 int SGMII_SPEED_10 ; 
 int SGMII_SPEED_100 ; 
 int SGMII_SPEED_1000 ; 
 int SPEED_10 ; 
 int SPEED_100 ; 
 int SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 struct phy_device* FUNC1 (struct xlr_net_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xlr_net_priv*) ; 

void FUNC4(struct xlr_net_priv *priv)
{
	struct phy_device *phydev = FUNC1(priv);
	int speed;

	if (phydev->interface == PHY_INTERFACE_MODE_SGMII)
		FUNC3(priv);

	if (phydev->speed != priv->phy_speed) {
		speed = phydev->speed;
		if (speed == SPEED_1000) {
			/* Set interface to Byte mode */
			FUNC2(priv->base_addr, R_MAC_CONFIG_2, 0x7217);
			priv->phy_speed = speed;
		} else if (speed == SPEED_100 || speed == SPEED_10) {
			/* Set interface to Nibble mode */
			FUNC2(priv->base_addr, R_MAC_CONFIG_2, 0x7117);
			priv->phy_speed = speed;
		}
		/* Set SGMII speed in Interface control reg */
		if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
			if (speed == SPEED_10)
				FUNC2(priv->base_addr,
					     R_INTERFACE_CONTROL,
					     SGMII_SPEED_10);
			if (speed == SPEED_100)
				FUNC2(priv->base_addr,
					     R_INTERFACE_CONTROL,
					     SGMII_SPEED_100);
			if (speed == SPEED_1000)
				FUNC2(priv->base_addr,
					     R_INTERFACE_CONTROL,
					     SGMII_SPEED_1000);
		}
		if (speed == SPEED_10)
			FUNC2(priv->base_addr, R_CORECONTROL, 0x2);
		if (speed == SPEED_100)
			FUNC2(priv->base_addr, R_CORECONTROL, 0x1);
		if (speed == SPEED_1000)
			FUNC2(priv->base_addr, R_CORECONTROL, 0x0);
	}
	FUNC0("gmac%d : %dMbps\n", priv->port_id, priv->phy_speed);
}