#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pmcraid_instance {TYPE_3__** cmd_list; int /*<<< orphan*/  control_pool; TYPE_2__* pdev; int /*<<< orphan*/  ctl_pool_name; TYPE_1__* host; } ;
struct pmcraid_control_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ioa_cb; int /*<<< orphan*/  ioa_cb_bus_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int unique_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PMCRAID_IOARCB_ALIGNMENT ; 
 int PMCRAID_MAX_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcraid_instance*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct pmcraid_instance *pinstance)
{
	int i;

	FUNC4(pinstance->ctl_pool_name, "pmcraid_control_pool_%d",
		pinstance->host->unique_id);

	pinstance->control_pool =
		FUNC1(pinstance->ctl_pool_name,
				&pinstance->pdev->dev,
				sizeof(struct pmcraid_control_block),
				PMCRAID_IOARCB_ALIGNMENT, 0);

	if (!pinstance->control_pool)
		return -ENOMEM;

	for (i = 0; i < PMCRAID_MAX_CMD; i++) {
		pinstance->cmd_list[i]->ioa_cb =
			FUNC0(
				pinstance->control_pool,
				GFP_KERNEL,
				&(pinstance->cmd_list[i]->ioa_cb_bus_addr));

		if (!pinstance->cmd_list[i]->ioa_cb) {
			FUNC3(pinstance, i);
			return -ENOMEM;
		}
		FUNC2(pinstance->cmd_list[i]->ioa_cb, 0,
			sizeof(struct pmcraid_control_block));
	}
	return 0;
}