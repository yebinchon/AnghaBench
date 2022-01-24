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
struct ql_adapter {int /*<<< orphan*/  mpi_port_cfg_work; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int FUNC0 (struct ql_adapter*) ; 
 int FUNC1 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ql_adapter *qdev)
{
	int status;
	/*
	 * Get MPI firmware version for driver banner
	 * and ethool info.
	 */
	status = FUNC0(qdev);
	if (status)
		goto exit;
	status = FUNC1(qdev);
	if (status)
		goto exit;
	/* Wake up a worker to get/set the TX/RX frame sizes. */
	FUNC2(qdev->workqueue, &qdev->mpi_port_cfg_work, 0);
exit:
	return status;
}