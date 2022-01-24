#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ chip_reset_done; } ;
struct qla_hw_data {TYPE_1__ flags; scalar_t__ dpc_active; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  ISP_ABORT_RETRY ; 
 unsigned long MAX_LOOP_TIMEOUT ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	int		return_status;
	unsigned long	wait_reset;
	struct qla_hw_data *ha = vha->hw;
	scsi_qla_host_t *base_vha = FUNC1(ha->pdev);

	wait_reset = jiffies + (MAX_LOOP_TIMEOUT * HZ);
	while (((FUNC2(ISP_ABORT_NEEDED, &base_vha->dpc_flags)) ||
	    FUNC2(ABORT_ISP_ACTIVE, &base_vha->dpc_flags) ||
	    FUNC2(ISP_ABORT_RETRY, &base_vha->dpc_flags) ||
	    ha->dpc_active) && FUNC3(jiffies, wait_reset)) {

		FUNC0(1000);

		if (!FUNC2(ISP_ABORT_NEEDED, &base_vha->dpc_flags) &&
		    ha->flags.chip_reset_done)
			break;
	}
	if (ha->flags.chip_reset_done)
		return_status = QLA_SUCCESS;
	else
		return_status = QLA_FUNCTION_FAILED;

	return return_status;
}