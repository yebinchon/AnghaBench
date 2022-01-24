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
struct phy {int /*<<< orphan*/  dev; } ;
struct ns2_phy_driver {scalar_t__ usb2h_strap_reg; scalar_t__ idmdrd_rst_ctrl; scalar_t__ crmu_usb2_ctrl; scalar_t__ icfgdrd_regs; } ;
struct ns2_phy_data {scalar_t__ new_state; struct ns2_phy_driver* driver; } ;

/* Variables and functions */
 scalar_t__ AFE_CORERDY_VDDC ; 
 scalar_t__ DRD_DEV_MODE ; 
 scalar_t__ DRD_DEV_VAL ; 
 scalar_t__ DRD_HOST_VAL ; 
 scalar_t__ EVT_DEVICE ; 
 scalar_t__ ICFG_DRD_P0CTL ; 
 int /*<<< orphan*/  ICFG_MISC_STAT ; 
 scalar_t__ IDM_RST_BIT ; 
 scalar_t__ OHCI_OVRCUR_POL ; 
 int /*<<< orphan*/  PHY_PLL_LOCK ; 
 scalar_t__ PHY_PLL_RESETB ; 
 scalar_t__ PHY_RESETB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ns2_phy_data* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ns2_phy_driver*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct ns2_phy_data *data = FUNC1(phy);
	struct ns2_phy_driver *driver = data->driver;
	u32 extcon_event = data->new_state;
	int ret;
	u32 val;

	if (extcon_event == EVT_DEVICE) {
		FUNC4(DRD_DEV_VAL, driver->icfgdrd_regs + ICFG_DRD_P0CTL);

		val = FUNC3(driver->idmdrd_rst_ctrl);
		val &= ~IDM_RST_BIT;
		FUNC4(val, driver->idmdrd_rst_ctrl);

		val = FUNC3(driver->crmu_usb2_ctrl);
		val |= (AFE_CORERDY_VDDC | DRD_DEV_MODE);
		FUNC4(val, driver->crmu_usb2_ctrl);

		/* Bring PHY and PHY_PLL out of Reset */
		val = FUNC3(driver->crmu_usb2_ctrl);
		val |= (PHY_PLL_RESETB | PHY_RESETB);
		FUNC4(val, driver->crmu_usb2_ctrl);

		ret = FUNC2(ICFG_MISC_STAT, PHY_PLL_LOCK, driver);
		if (ret < 0) {
			FUNC0(&phy->dev, "Phy PLL lock failed\n");
			return ret;
		}
	} else {
		FUNC4(DRD_HOST_VAL, driver->icfgdrd_regs + ICFG_DRD_P0CTL);

		val = FUNC3(driver->crmu_usb2_ctrl);
		val |= AFE_CORERDY_VDDC;
		FUNC4(val, driver->crmu_usb2_ctrl);

		ret = FUNC2(ICFG_MISC_STAT, PHY_PLL_LOCK, driver);
		if (ret < 0) {
			FUNC0(&phy->dev, "Phy PLL lock failed\n");
			return ret;
		}

		val = FUNC3(driver->idmdrd_rst_ctrl);
		val &= ~IDM_RST_BIT;
		FUNC4(val, driver->idmdrd_rst_ctrl);

		/* port over current Polarity */
		val = FUNC3(driver->usb2h_strap_reg);
		val |= OHCI_OVRCUR_POL;
		FUNC4(val, driver->usb2h_strap_reg);
	}

	return 0;
}