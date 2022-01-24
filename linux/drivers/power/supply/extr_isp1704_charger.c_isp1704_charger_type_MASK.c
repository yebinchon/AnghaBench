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
typedef  int u8 ;
struct isp1704_charger {int dummy; } ;

/* Variables and functions */
 int POWER_SUPPLY_TYPE_USB_CDP ; 
 int POWER_SUPPLY_TYPE_USB_DCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULPI_DEBUG ; 
 int /*<<< orphan*/  ULPI_FUNC_CTRL ; 
 int ULPI_FUNC_CTRL_FULL_SPEED ; 
 int ULPI_FUNC_CTRL_RESET ; 
 int ULPI_FUNC_CTRL_TERMSELECT ; 
 int ULPI_FUNC_CTRL_XCVRSEL_MASK ; 
 int /*<<< orphan*/  ULPI_OTG_CTRL ; 
 int ULPI_OTG_CTRL_DM_PULLDOWN ; 
 int ULPI_OTG_CTRL_DP_PULLDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct isp1704_charger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1704_charger*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static inline int FUNC5(struct isp1704_charger *isp)
{
	u8 reg;
	u8 func_ctrl;
	u8 otg_ctrl;
	int type = POWER_SUPPLY_TYPE_USB_DCP;

	func_ctrl = FUNC2(isp, ULPI_FUNC_CTRL);
	otg_ctrl = FUNC2(isp, ULPI_OTG_CTRL);

	/* disable pulldowns */
	reg = ULPI_OTG_CTRL_DM_PULLDOWN | ULPI_OTG_CTRL_DP_PULLDOWN;
	FUNC3(isp, FUNC0(ULPI_OTG_CTRL), reg);

	/* full speed */
	FUNC3(isp, FUNC0(ULPI_FUNC_CTRL),
			ULPI_FUNC_CTRL_XCVRSEL_MASK);
	FUNC3(isp, FUNC1(ULPI_FUNC_CTRL),
			ULPI_FUNC_CTRL_FULL_SPEED);

	/* Enable strong pull-up on DP (1.5K) and reset */
	reg = ULPI_FUNC_CTRL_TERMSELECT | ULPI_FUNC_CTRL_RESET;
	FUNC3(isp, FUNC1(ULPI_FUNC_CTRL), reg);
	FUNC4(1000, 2000);

	reg = FUNC2(isp, ULPI_DEBUG);
	if ((reg & 3) != 3)
		type = POWER_SUPPLY_TYPE_USB_CDP;

	/* recover original state */
	FUNC3(isp, ULPI_FUNC_CTRL, func_ctrl);
	FUNC3(isp, ULPI_OTG_CTRL, otg_ctrl);

	return type;
}