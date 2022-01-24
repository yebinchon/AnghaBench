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
struct controller {unsigned long cmd_started; int slot_ctrl; int /*<<< orphan*/  cmd_busy; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct controller*) ; 
 int PCI_EXP_SLTCTL_CCIE ; 
 int PCI_EXP_SLTCTL_HPIE ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned int) ; 
 int FUNC4 (struct controller*,int /*<<< orphan*/ ) ; 
 scalar_t__ pciehp_poll_mode ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct controller *ctrl)
{
	unsigned int msecs = pciehp_poll_mode ? 2500 : 1000;
	unsigned long duration = FUNC3(msecs);
	unsigned long cmd_timeout = ctrl->cmd_started + duration;
	unsigned long now, timeout;
	int rc;

	/*
	 * If the controller does not generate notifications for command
	 * completions, we never need to wait between writes.
	 */
	if (FUNC0(ctrl))
		return;

	if (!ctrl->cmd_busy)
		return;

	/*
	 * Even if the command has already timed out, we want to call
	 * pcie_poll_cmd() so it can clear PCI_EXP_SLTSTA_CC.
	 */
	now = jiffies;
	if (FUNC5(cmd_timeout, now))
		timeout = 1;
	else
		timeout = cmd_timeout - now;

	if (ctrl->slot_ctrl & PCI_EXP_SLTCTL_HPIE &&
	    ctrl->slot_ctrl & PCI_EXP_SLTCTL_CCIE)
		rc = FUNC6(ctrl->queue, !ctrl->cmd_busy, timeout);
	else
		rc = FUNC4(ctrl, FUNC2(timeout));

	if (!rc)
		FUNC1(ctrl, "Timeout on hotplug command %#06x (issued %u msec ago)\n",
			  ctrl->slot_ctrl,
			  FUNC2(jiffies - ctrl->cmd_started));
}