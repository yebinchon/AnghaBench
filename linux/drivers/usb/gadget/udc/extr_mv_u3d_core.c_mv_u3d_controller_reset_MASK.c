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
struct mv_u3d {int ep_context_dma; TYPE_1__* op_regs; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dcbaaph; int /*<<< orphan*/  dcbaapl; int /*<<< orphan*/  usbcmd; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOPS_USEC ; 
 int MV_U3D_CMD_CTRL_RESET ; 
 int MV_U3D_CMD_RUN_STOP ; 
 int /*<<< orphan*/  MV_U3D_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mv_u3d *u3d)
{
	unsigned int loops;
	u32 tmp;

	/* Stop the controller */
	tmp = FUNC2(&u3d->op_regs->usbcmd);
	tmp &= ~MV_U3D_CMD_RUN_STOP;
	FUNC3(tmp, &u3d->op_regs->usbcmd);

	/* Reset the controller to get default values */
	FUNC3(MV_U3D_CMD_CTRL_RESET, &u3d->op_regs->usbcmd);

	/* wait for reset to complete */
	loops = FUNC0(MV_U3D_RESET_TIMEOUT);
	while (FUNC2(&u3d->op_regs->usbcmd) & MV_U3D_CMD_CTRL_RESET) {
		if (loops == 0) {
			FUNC1(u3d->dev,
				"Wait for RESET completed TIMEOUT\n");
			return -ETIMEDOUT;
		}
		loops--;
		FUNC4(LOOPS_USEC);
	}

	/* Configure the Endpoint Context Address */
	FUNC3(u3d->ep_context_dma, &u3d->op_regs->dcbaapl);
	FUNC3(0, &u3d->op_regs->dcbaaph);

	return 0;
}