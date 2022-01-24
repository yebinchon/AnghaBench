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
struct ns2_phy_driver {scalar_t__ icfgdrd_regs; } ;
struct ns2_phy_data {scalar_t__ new_state; struct ns2_phy_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRD_DEVICE_MODE ; 
 int /*<<< orphan*/  DRD_HOST_MODE ; 
 scalar_t__ EVT_HOST ; 
 scalar_t__ ICFG_FSM_CTRL ; 
 struct ns2_phy_data* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct ns2_phy_data *data = FUNC0(phy);
	struct ns2_phy_driver *driver = data->driver;
	u32 val;

	val = FUNC1(driver->icfgdrd_regs + ICFG_FSM_CTRL);

	if (data->new_state == EVT_HOST) {
		val &= ~DRD_DEVICE_MODE;
		val |= DRD_HOST_MODE;
	} else {
		val &= ~DRD_HOST_MODE;
		val |= DRD_DEVICE_MODE;
	}
	FUNC2(val, driver->icfgdrd_regs + ICFG_FSM_CTRL);

	return 0;
}