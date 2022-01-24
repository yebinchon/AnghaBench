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
typedef  int /*<<< orphan*/  u32 ;
struct phy {int dummy; } ;
struct mvebu_comphy_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  cp_phys; } ;
struct mvebu_comphy_lane {int mode; int /*<<< orphan*/  id; int /*<<< orphan*/  submode; int /*<<< orphan*/  port; struct mvebu_comphy_priv* priv; } ;

/* Variables and functions */
 int COMPHY_FW_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int COMPHY_FW_SPEED_103125 ; 
 int COMPHY_FW_SPEED_1250 ; 
 int COMPHY_FW_SPEED_3125 ; 
 int /*<<< orphan*/  COMPHY_SIP_POWER_ON ; 
 int ENOTSUPP ; 
#define  PHY_INTERFACE_MODE_10GKR 136 
#define  PHY_INTERFACE_MODE_2500BASEX 135 
#define  PHY_INTERFACE_MODE_RXAUI 134 
#define  PHY_INTERFACE_MODE_SGMII 133 
#define  PHY_MODE_ETHERNET 132 
#define  PHY_MODE_PCIE 131 
#define  PHY_MODE_SATA 130 
#define  PHY_MODE_USB_DEVICE_SS 129 
#define  PHY_MODE_USB_HOST_SS 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct phy*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvebu_comphy_lane* FUNC9 (struct phy*) ; 

__attribute__((used)) static int FUNC10(struct phy *phy)
{
	struct mvebu_comphy_lane *lane = FUNC9(phy);
	struct mvebu_comphy_priv *priv = lane->priv;
	int fw_mode, fw_speed;
	u32 fw_param = 0;
	int ret;

	fw_mode = FUNC6(lane->id, lane->port,
					   lane->mode, lane->submode);
	if (fw_mode < 0)
		goto try_legacy;

	/* Try SMC flow first */
	switch (lane->mode) {
	case PHY_MODE_ETHERNET:
		switch (lane->submode) {
		case PHY_INTERFACE_MODE_RXAUI:
			FUNC3(priv->dev, "set lane %d to RXAUI mode\n",
				lane->id);
			fw_speed = 0;
			break;
		case PHY_INTERFACE_MODE_SGMII:
			FUNC3(priv->dev, "set lane %d to 1000BASE-X mode\n",
				lane->id);
			fw_speed = COMPHY_FW_SPEED_1250;
			break;
		case PHY_INTERFACE_MODE_2500BASEX:
			FUNC3(priv->dev, "set lane %d to 2500BASE-X mode\n",
				lane->id);
			fw_speed = COMPHY_FW_SPEED_3125;
			break;
		case PHY_INTERFACE_MODE_10GKR:
			FUNC3(priv->dev, "set lane %d to 10G-KR mode\n",
				lane->id);
			fw_speed = COMPHY_FW_SPEED_103125;
			break;
		default:
			FUNC4(priv->dev, "unsupported Ethernet mode (%d)\n",
				lane->submode);
			return -ENOTSUPP;
		}
		fw_param = FUNC1(fw_mode, lane->port, fw_speed);
		break;
	case PHY_MODE_USB_HOST_SS:
	case PHY_MODE_USB_DEVICE_SS:
		FUNC3(priv->dev, "set lane %d to USB3 mode\n", lane->id);
		fw_param = FUNC0(fw_mode, lane->port);
		break;
	case PHY_MODE_SATA:
		FUNC3(priv->dev, "set lane %d to SATA mode\n", lane->id);
		fw_param = FUNC0(fw_mode, lane->port);
		break;
	case PHY_MODE_PCIE:
		FUNC3(priv->dev, "set lane %d to PCIe mode (x%d)\n", lane->id,
			lane->submode);
		fw_param = FUNC2(fw_mode, lane->port,
						lane->submode);
		break;
	default:
		FUNC4(priv->dev, "unsupported PHY mode (%d)\n", lane->mode);
		return -ENOTSUPP;
	}

	ret = FUNC8(COMPHY_SIP_POWER_ON, priv->cp_phys, lane->id,
			       fw_param);
	if (!ret)
		return ret;

	if (ret == COMPHY_FW_NOT_SUPPORTED)
		FUNC4(priv->dev,
			"unsupported SMC call, try updating your firmware\n");

	FUNC5(priv->dev,
		 "Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\n",
		 lane->id, lane->mode, ret);

try_legacy:
	/* Fallback to Linux's implementation */
	return FUNC7(phy);
}