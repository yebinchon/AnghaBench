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
struct fc_lport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fc_lun; int /*<<< orphan*/  fc_tm_flags; int /*<<< orphan*/  fc_dl; } ;
struct fc_fcp_pkt {int wait_for_comp; scalar_t__ cdb_status; int /*<<< orphan*/  scsi_pkt_lock; int /*<<< orphan*/ * seq_ptr; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; int /*<<< orphan*/  tm_done; TYPE_1__ cdb_cmd; int /*<<< orphan*/  data_len; } ;

/* Variables and functions */
 int FAILED ; 
 scalar_t__ FCP_TMF_CMPL ; 
 int /*<<< orphan*/  FCP_TMF_LUN_RESET ; 
 int /*<<< orphan*/  FC_CMD_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,...) ; 
 int /*<<< orphan*/  FC_SCSI_TM_TOV ; 
 int /*<<< orphan*/  FC_SRB_COMPL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct fc_lport *lport, struct fc_fcp_pkt *fsp,
			unsigned int id, unsigned int lun)
{
	int rc;

	fsp->cdb_cmd.fc_dl = FUNC5(fsp->data_len);
	fsp->cdb_cmd.fc_tm_flags = FCP_TMF_LUN_RESET;
	FUNC7(lun, &fsp->cdb_cmd.fc_lun);

	fsp->wait_for_comp = 1;
	FUNC6(&fsp->tm_done);

	FUNC4(&fsp->timer);

	/*
	 * wait for completion of reset
	 * after that make sure all commands are terminated
	 */
	rc = FUNC10(&fsp->tm_done, FC_SCSI_TM_TOV);

	FUNC8(&fsp->scsi_pkt_lock);
	fsp->state |= FC_SRB_COMPL;
	FUNC9(&fsp->scsi_pkt_lock);

	FUNC1(&fsp->timer);

	FUNC8(&fsp->scsi_pkt_lock);
	if (fsp->seq_ptr) {
		FUNC2(fsp->seq_ptr);
		fsp->seq_ptr = NULL;
	}
	fsp->wait_for_comp = 0;
	FUNC9(&fsp->scsi_pkt_lock);

	if (!rc) {
		FUNC0(lport, "lun reset failed\n");
		return FAILED;
	}

	/* cdb_status holds the tmf's rsp code */
	if (fsp->cdb_status != FCP_TMF_CMPL)
		return FAILED;

	FUNC0(lport, "lun reset to lun %u completed\n", lun);
	FUNC3(lport, id, lun, FC_CMD_ABORTED);
	return SUCCESS;
}