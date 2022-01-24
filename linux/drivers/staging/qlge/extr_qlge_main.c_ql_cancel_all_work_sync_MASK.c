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
struct ql_adapter {int /*<<< orphan*/  mpi_port_cfg_work; int /*<<< orphan*/  mpi_core_to_log; int /*<<< orphan*/  mpi_idc_work; int /*<<< orphan*/  mpi_work; int /*<<< orphan*/  mpi_reset_work; int /*<<< orphan*/  asic_reset_work; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ql_adapter *qdev)
{

	/* Don't kill the reset worker thread if we
	 * are in the process of recovery.
	 */
	if (FUNC1(QL_ADAPTER_UP, &qdev->flags))
		FUNC0(&qdev->asic_reset_work);
	FUNC0(&qdev->mpi_reset_work);
	FUNC0(&qdev->mpi_work);
	FUNC0(&qdev->mpi_idc_work);
	FUNC0(&qdev->mpi_core_to_log);
	FUNC0(&qdev->mpi_port_cfg_work);
}