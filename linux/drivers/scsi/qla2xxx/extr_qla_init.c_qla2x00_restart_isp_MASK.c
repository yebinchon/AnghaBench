#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int chip_reset_done; } ;
struct qla_hw_data {int /*<<< orphan*/  base_qpair; TYPE_3__ flags; TYPE_2__* isp_ops; } ;
struct TYPE_12__ {scalar_t__ online; } ;
struct TYPE_15__ {int device_flags; int /*<<< orphan*/  dpc_flags; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_13__ {int (* chip_diag ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int DFLG_NO_CABLE ; 
 int /*<<< orphan*/  LOOP_RESYNC_NEEDED ; 
 int /*<<< orphan*/  MK_SYNC_ALL ; 
 int /*<<< orphan*/  RESET_MARKER_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC9(scsi_qla_host_t *vha)
{
	int status = 0;
	struct qla_hw_data *ha = vha->hw;

	/* If firmware needs to be loaded */
	if (FUNC4(vha)) {
		vha->flags.online = 0;
		status = ha->isp_ops->chip_diag(vha);
		if (!status)
			status = FUNC6(vha);
	}

	if (!status && !(status = FUNC3(vha))) {
		FUNC0(RESET_MARKER_NEEDED, &vha->dpc_flags);
		ha->flags.chip_reset_done = 1;

		/* Initialize the queues in use */
		FUNC1(ha);

		status = FUNC2(vha);
		if (!status) {
			/* Issue a marker after FW becomes ready. */
			FUNC5(vha, ha->base_qpair, 0, 0, MK_SYNC_ALL);
			FUNC7(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
		}

		/* if no cable then assume it's good */
		if ((vha->device_flags & DFLG_NO_CABLE))
			status = 0;
	}
	return (status);
}