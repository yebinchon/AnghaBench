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
struct fc_fcp_pkt {int state; int wait_for_comp; int /*<<< orphan*/  scsi_pkt_lock; int /*<<< orphan*/  tm_done; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*,char*,...) ; 
 int /*<<< orphan*/  FC_SCSI_TM_TOV ; 
 int FC_SRB_ABORTED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_pkt*) ; 
 scalar_t__ FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fc_fcp_pkt *fsp)
{
	int rc = FAILED;
	unsigned long ticks_left;

	FUNC0(fsp, "pkt abort state %x\n", fsp->state);
	if (FUNC2(fsp)) {
		FUNC0(fsp, "failed to send abort\n");
		return FAILED;
	}

	if (fsp->state & FC_SRB_ABORTED) {
		FUNC0(fsp, "target abort cmd  completed\n");
		return SUCCESS;
	}

	FUNC3(&fsp->tm_done);
	fsp->wait_for_comp = 1;

	FUNC5(&fsp->scsi_pkt_lock);
	ticks_left = FUNC6(&fsp->tm_done,
							FC_SCSI_TM_TOV);
	FUNC4(&fsp->scsi_pkt_lock);
	fsp->wait_for_comp = 0;

	if (!ticks_left) {
		FUNC0(fsp, "target abort cmd  failed\n");
	} else if (fsp->state & FC_SRB_ABORTED) {
		FUNC0(fsp, "target abort cmd  passed\n");
		rc = SUCCESS;
		FUNC1(fsp);
	}

	return rc;
}