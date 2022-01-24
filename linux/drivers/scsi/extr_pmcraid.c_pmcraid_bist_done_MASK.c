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
typedef  int u16 ;
struct timer_list {int dummy; } ;
struct pmcraid_instance {TYPE_1__* host; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct pmcraid_cmd {scalar_t__ time_left; TYPE_2__ timer; struct pmcraid_instance* drv_inst; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct pmcraid_cmd* cmd ; 
 struct pmcraid_cmd* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct pmcraid_cmd *cmd = FUNC1(cmd, t, timer);
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	unsigned long lock_flags;
	int rc;
	u16 pci_reg;

	rc = FUNC2(pinstance->pdev, PCI_COMMAND, &pci_reg);

	/* If PCI config space can't be accessed wait for another two secs */
	if ((rc != PCIBIOS_SUCCESSFUL || (!(pci_reg & PCI_COMMAND_MEMORY))) &&
	    cmd->time_left > 0) {
		FUNC3("BIST not complete, waiting another 2 secs\n");
		cmd->timer.expires = jiffies + cmd->time_left;
		cmd->time_left = 0;
		FUNC0(&cmd->timer);
	} else {
		cmd->time_left = 0;
		FUNC3("BIST is complete, proceeding with reset\n");
		FUNC5(pinstance->host->host_lock, lock_flags);
		FUNC4(cmd);
		FUNC6(pinstance->host->host_lock, lock_flags);
	}
}