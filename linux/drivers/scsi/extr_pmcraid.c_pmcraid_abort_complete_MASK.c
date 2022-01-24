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
typedef  scalar_t__ u32 ;
struct pmcraid_resource_entry {int sync_reqd; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; struct pmcraid_resource_entry* res; int /*<<< orphan*/  wait_for_completion; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_4__ {TYPE_1__ ioasa; } ;

/* Variables and functions */
 int FAILED ; 
 scalar_t__ PMCRAID_IOASC_NR_SYNC_REQUIRED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PMCRAID_IOASC_UA_BUS_WAS_RESET ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pmcraid_cmd *cancel_cmd)
{
	struct pmcraid_resource_entry *res;
	u32 ioasc;

	FUNC3(&cancel_cmd->wait_for_completion);
	res = cancel_cmd->res;
	cancel_cmd->res = NULL;
	ioasc = FUNC1(cancel_cmd->ioa_cb->ioasa.ioasc);

	/* If the abort task is not timed out we will get a Good completion
	 * as sense_key, otherwise we may get one the following responses
	 * due to subsequent bus reset or device reset. In case IOASC is
	 * NR_SYNC_REQUIRED, set sync_reqd flag for the corresponding resource
	 */
	if (ioasc == PMCRAID_IOASC_UA_BUS_WAS_RESET ||
	    ioasc == PMCRAID_IOASC_NR_SYNC_REQUIRED) {
		if (ioasc == PMCRAID_IOASC_NR_SYNC_REQUIRED)
			res->sync_reqd = 1;
		ioasc = 0;
	}

	/* complete the command here itself */
	FUNC2(cancel_cmd);
	return FUNC0(ioasc) ? FAILED : SUCCESS;
}