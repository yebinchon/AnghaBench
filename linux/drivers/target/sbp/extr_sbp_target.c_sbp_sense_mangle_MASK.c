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
typedef  int u8 ;
struct se_cmd {int scsi_sense_length; int scsi_status; int scsi_asc; int scsi_ascq; } ;
struct TYPE_2__ {int* data; int /*<<< orphan*/  status; } ;
struct sbp_target_request {int* sense_buf; TYPE_1__ status; struct se_cmd se_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBP_STATUS_OK ; 
 int /*<<< orphan*/  SBP_STATUS_REQUEST_ABORTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_RESP_REQUEST_COMPLETE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7(struct sbp_target_request *req)
{
	struct se_cmd *se_cmd = &req->se_cmd;
	u8 *sense = req->sense_buf;
	u8 *status = req->status.data;

	FUNC4(se_cmd->scsi_sense_length < 18);

	switch (sense[0] & 0x7f) { 		/* sfmt */
	case 0x70: /* current, fixed */
		status[0] = 0 << 6;
		break;
	case 0x71: /* deferred, fixed */
		status[0] = 1 << 6;
		break;
	case 0x72: /* current, descriptor */
	case 0x73: /* deferred, descriptor */
	default:
		/*
		 * TODO: SBP-3 specifies what we should do with descriptor
		 * format sense data
		 */
		FUNC6("sbp_send_sense: unknown sense format: 0x%x\n",
			sense[0]);
		req->status.status |= FUNC5(
			FUNC2(STATUS_RESP_REQUEST_COMPLETE) |
			FUNC0(0) |
			FUNC1(1) |
			FUNC3(SBP_STATUS_REQUEST_ABORTED));
		return;
	}

	status[0] |= se_cmd->scsi_status & 0x3f;/* status */
	status[1] =
		(sense[0] & 0x80) |		/* valid */
		((sense[2] & 0xe0) >> 1) |	/* mark, eom, ili */
		(sense[2] & 0x0f);		/* sense_key */
	status[2] = se_cmd->scsi_asc;		/* sense_code */
	status[3] = se_cmd->scsi_ascq;		/* sense_qualifier */

	/* information */
	status[4] = sense[3];
	status[5] = sense[4];
	status[6] = sense[5];
	status[7] = sense[6];

	/* CDB-dependent */
	status[8] = sense[8];
	status[9] = sense[9];
	status[10] = sense[10];
	status[11] = sense[11];

	/* fru */
	status[12] = sense[14];

	/* sense_key-dependent */
	status[13] = sense[15];
	status[14] = sense[16];
	status[15] = sense[17];

	req->status.status |= FUNC5(
		FUNC2(STATUS_RESP_REQUEST_COMPLETE) |
		FUNC0(0) |
		FUNC1(5) |
		FUNC3(SBP_STATUS_OK));
}