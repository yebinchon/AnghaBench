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
typedef  int u32 ;
struct cdns3 {TYPE_1__* otg_regs; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  cmd; int /*<<< orphan*/  sts; } ;

/* Variables and functions */
 int OTGCMD_DEV_BUS_DROP ; 
 int OTGCMD_DEV_BUS_REQ ; 
 int OTGCMD_DEV_POWER_OFF ; 
 int OTGCMD_HOST_BUS_DROP ; 
 int OTGCMD_HOST_POWER_OFF ; 
 int OTGCMD_OTG_DIS ; 
 int OTGSTATE_DEV_STATE_MASK ; 
 int OTGSTS_DEV_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

int FUNC5(struct cdns3 *cdns, int on)
{
	int ret, val;
	u32 reg = OTGCMD_OTG_DIS;

	/* switch OTG core */
	if (on) {
		FUNC4(OTGCMD_DEV_BUS_REQ | reg, &cdns->otg_regs->cmd);

		FUNC0(cdns->dev, "Waiting till Device mode is turned on\n");

		ret = FUNC2(&cdns->otg_regs->sts, val,
						val & OTGSTS_DEV_READY,
						1, 100000);
		if (ret) {
			FUNC1(cdns->dev, "timeout waiting for dev_ready\n");
			return ret;
		}
	} else {
		/*
		 * driver should wait at least 10us after disabling Device
		 * before turning-off Device (DEV_BUS_DROP)
		 */
		FUNC3(20, 30);
		FUNC4(OTGCMD_HOST_BUS_DROP | OTGCMD_DEV_BUS_DROP |
		       OTGCMD_DEV_POWER_OFF | OTGCMD_HOST_POWER_OFF,
		       &cdns->otg_regs->cmd);
		/* Waiting till DEV_IDLE state.*/
		FUNC2(&cdns->otg_regs->state, val,
					  !(val & OTGSTATE_DEV_STATE_MASK),
					  1, 2000000);
	}

	return 0;
}