#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mv_otg {TYPE_2__* op_regs; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  usbsts; int /*<<< orphan*/  usbintr; int /*<<< orphan*/  usbcmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int USBCMD_CTRL_RESET ; 
 int USBCMD_RUN_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mv_otg *mvotg)
{
	unsigned int loops;
	u32 tmp;

	/* Stop the controller */
	tmp = FUNC1(&mvotg->op_regs->usbcmd);
	tmp &= ~USBCMD_RUN_STOP;
	FUNC3(tmp, &mvotg->op_regs->usbcmd);

	/* Reset the controller to get default values */
	FUNC3(USBCMD_CTRL_RESET, &mvotg->op_regs->usbcmd);

	loops = 500;
	while (FUNC1(&mvotg->op_regs->usbcmd) & USBCMD_CTRL_RESET) {
		if (loops == 0) {
			FUNC0(&mvotg->pdev->dev,
				"Wait for RESET completed TIMEOUT\n");
			return -ETIMEDOUT;
		}
		loops--;
		FUNC2(20);
	}

	FUNC3(0x0, &mvotg->op_regs->usbintr);
	tmp = FUNC1(&mvotg->op_regs->usbsts);
	FUNC3(tmp, &mvotg->op_regs->usbsts);

	return 0;
}