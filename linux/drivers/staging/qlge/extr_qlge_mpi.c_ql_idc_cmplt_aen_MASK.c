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
struct mbox_params {int out_count; } ;
struct ql_adapter {int /*<<< orphan*/  ide_completion; int /*<<< orphan*/  ndev; struct mbox_params idc_mbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ql_adapter*,struct mbox_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC4(struct ql_adapter *qdev)
{
	int status;
	struct mbox_params *mbcp = &qdev->idc_mbc;
	mbcp->out_count = 4;
	status = FUNC2(qdev, mbcp);
	if (status) {
		FUNC1(qdev, drv, qdev->ndev,
			  "Could not read MPI, resetting RISC!\n");
		FUNC3(qdev);
	} else
		/* Wake up the sleeping mpi_idc_work thread that is
		 * waiting for this event.
		 */
		FUNC0(&qdev->ide_completion);

	return status;
}