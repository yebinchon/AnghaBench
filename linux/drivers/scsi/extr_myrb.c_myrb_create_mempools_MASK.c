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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct myrb_sge {int dummy; } ;
struct myrb_hba {int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  work_q; TYPE_1__* host; int /*<<< orphan*/ * sg_pool; int /*<<< orphan*/ * dcdb_pool; int /*<<< orphan*/  work_q_name; } ;
struct myrb_dcdb {int dummy; } ;
struct TYPE_2__ {size_t sg_tablesize; int host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  myrb_monitor ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static bool FUNC7(struct pci_dev *pdev, struct myrb_hba *cb)
{
	size_t elem_size, elem_align;

	elem_align = sizeof(struct myrb_sge);
	elem_size = cb->host->sg_tablesize * elem_align;
	cb->sg_pool = FUNC2("myrb_sg", &pdev->dev,
				      elem_size, elem_align, 0);
	if (cb->sg_pool == NULL) {
		FUNC5(KERN_ERR, cb->host,
			     "Failed to allocate SG pool\n");
		return false;
	}

	cb->dcdb_pool = FUNC2("myrb_dcdb", &pdev->dev,
				       sizeof(struct myrb_dcdb),
				       sizeof(unsigned int), 0);
	if (!cb->dcdb_pool) {
		FUNC3(cb->sg_pool);
		cb->sg_pool = NULL;
		FUNC5(KERN_ERR, cb->host,
			     "Failed to allocate DCDB pool\n");
		return false;
	}

	FUNC6(cb->work_q_name, sizeof(cb->work_q_name),
		 "myrb_wq_%d", cb->host->host_no);
	cb->work_q = FUNC1(cb->work_q_name);
	if (!cb->work_q) {
		FUNC3(cb->dcdb_pool);
		cb->dcdb_pool = NULL;
		FUNC3(cb->sg_pool);
		cb->sg_pool = NULL;
		FUNC5(KERN_ERR, cb->host,
			     "Failed to create workqueue\n");
		return false;
	}

	/*
	 * Initialize the Monitoring Timer.
	 */
	FUNC0(&cb->monitor_work, myrb_monitor);
	FUNC4(cb->work_q, &cb->monitor_work, 1);

	return true;
}