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
struct pmcraid_timestamp_data {int dummy; } ;
struct pmcraid_instance {int /*<<< orphan*/  free_cmd_pool; struct pmcraid_cmd** cmd_list; int /*<<< orphan*/ * timestamp_data; int /*<<< orphan*/  timestamp_data_baddr; TYPE_1__* pdev; int /*<<< orphan*/ * inq_data; int /*<<< orphan*/  inq_data_baddr; int /*<<< orphan*/  num_hrrq; } ;
struct pmcraid_inquiry_data {int dummy; } ;
struct pmcraid_cmd {int /*<<< orphan*/  free_list; struct pmcraid_instance* drv_inst; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PMCRAID_MAX_CMD ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pmcraid_instance*) ; 
 scalar_t__ FUNC3 (struct pmcraid_instance*) ; 
 scalar_t__ FUNC4 (struct pmcraid_instance*) ; 
 scalar_t__ FUNC5 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct pmcraid_cmd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC9 (struct pmcraid_instance*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC11 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pmcraid_instance *pinstance)
{
	int i;

	if (FUNC5(pinstance)) {
		FUNC6("couldn't allocate memory for %d host rrqs\n",
			     pinstance->num_hrrq);
		return -ENOMEM;
	}

	if (FUNC3(pinstance)) {
		FUNC6("couldn't allocate memory for config buffers\n");
		FUNC11(pinstance, pinstance->num_hrrq);
		return -ENOMEM;
	}

	if (FUNC2(pinstance)) {
		FUNC6("couldn't allocate memory for cmd blocks\n");
		FUNC10(pinstance);
		FUNC11(pinstance, pinstance->num_hrrq);
		return -ENOMEM;
	}

	if (FUNC4(pinstance)) {
		FUNC6("couldn't allocate memory control blocks\n");
		FUNC10(pinstance);
		FUNC9(pinstance, PMCRAID_MAX_CMD);
		FUNC11(pinstance, pinstance->num_hrrq);
		return -ENOMEM;
	}

	/* allocate DMAable memory for page D0 INQUIRY buffer */
	pinstance->inq_data = FUNC0(&pinstance->pdev->dev,
					sizeof(struct pmcraid_inquiry_data),
					&pinstance->inq_data_baddr, GFP_KERNEL);
	if (pinstance->inq_data == NULL) {
		FUNC6("couldn't allocate DMA memory for INQUIRY\n");
		FUNC8(pinstance);
		return -ENOMEM;
	}

	/* allocate DMAable memory for set timestamp data buffer */
	pinstance->timestamp_data = FUNC0(&pinstance->pdev->dev,
					sizeof(struct pmcraid_timestamp_data),
					&pinstance->timestamp_data_baddr,
					GFP_KERNEL);
	if (pinstance->timestamp_data == NULL) {
		FUNC6("couldn't allocate DMA memory for \
				set time_stamp \n");
		FUNC8(pinstance);
		return -ENOMEM;
	}


	/* Initialize all the command blocks and add them to free pool. No
	 * need to lock (free_pool_lock) as this is done in initialization
	 * itself
	 */
	for (i = 0; i < PMCRAID_MAX_CMD; i++) {
		struct pmcraid_cmd *cmdp = pinstance->cmd_list[i];
		FUNC7(cmdp, i);
		cmdp->drv_inst = pinstance;
		FUNC1(&cmdp->free_list, &pinstance->free_cmd_pool);
	}

	return 0;
}