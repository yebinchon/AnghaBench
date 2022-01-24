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
typedef  int u32 ;
struct phy {int dummy; } ;
struct ns2_phy_driver {scalar_t__ icfgdrd_regs; scalar_t__ crmu_usb2_ctrl; } ;
struct ns2_phy_data {struct ns2_phy_driver* driver; } ;

/* Variables and functions */
 int AFE_CORERDY_VDDC ; 
 int DRD_DEVICE_MODE ; 
 int DRD_DEV_MODE ; 
 int DRD_HOST_MODE ; 
 scalar_t__ ICFG_FSM_CTRL ; 
 int ICFG_OFF_MODE ; 
 struct ns2_phy_data* FUNC0 (struct phy*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct ns2_phy_data *data = FUNC0(phy);
	struct ns2_phy_driver *driver = data->driver;
	u32 val;

	val = FUNC1(driver->crmu_usb2_ctrl);
	val &= ~AFE_CORERDY_VDDC;
	FUNC2(val, driver->crmu_usb2_ctrl);

	val = FUNC1(driver->crmu_usb2_ctrl);
	val &= ~DRD_DEV_MODE;
	FUNC2(val, driver->crmu_usb2_ctrl);

	/* Disable Host and Device Mode */
	val = FUNC1(driver->icfgdrd_regs + ICFG_FSM_CTRL);
	val &= ~(DRD_HOST_MODE | DRD_DEVICE_MODE | ICFG_OFF_MODE);
	FUNC2(val, driver->icfgdrd_regs + ICFG_FSM_CTRL);

	return 0;
}