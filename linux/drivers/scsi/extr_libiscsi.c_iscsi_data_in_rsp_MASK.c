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
struct TYPE_2__ {int length; } ;
struct scsi_cmnd {int result; TYPE_1__ sdb; } ;
struct iscsi_task {int /*<<< orphan*/  itt; struct scsi_cmnd* sc; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_data_rsp {int flags; int cmd_status; int /*<<< orphan*/  residual_count; int /*<<< orphan*/  statsn; } ;
struct iscsi_conn {int exp_statsn; int /*<<< orphan*/  scsirsp_pdus_cnt; int /*<<< orphan*/  session; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int DID_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct scsi_cmnd*,int,int /*<<< orphan*/ ) ; 
 int ISCSI_FLAG_CMD_OVERFLOW ; 
 int ISCSI_FLAG_DATA_OVERFLOW ; 
 int ISCSI_FLAG_DATA_STATUS ; 
 int ISCSI_FLAG_DATA_UNDERFLOW ; 
 int /*<<< orphan*/  ISCSI_TASK_COMPLETED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_nopin*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int) ; 

__attribute__((used)) static void
FUNC5(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
		  struct iscsi_task *task)
{
	struct iscsi_data_rsp *rhdr = (struct iscsi_data_rsp *)hdr;
	struct scsi_cmnd *sc = task->sc;

	if (!(rhdr->flags & ISCSI_FLAG_DATA_STATUS))
		return;

	FUNC3(conn->session, (struct iscsi_nopin *)hdr);
	sc->result = (DID_OK << 16) | rhdr->cmd_status;
	conn->exp_statsn = FUNC1(rhdr->statsn) + 1;
	if (rhdr->flags & (ISCSI_FLAG_DATA_UNDERFLOW |
	                   ISCSI_FLAG_DATA_OVERFLOW)) {
		int res_count = FUNC1(rhdr->residual_count);

		if (res_count > 0 &&
		    (rhdr->flags & ISCSI_FLAG_CMD_OVERFLOW ||
		     res_count <= sc->sdb.length))
			FUNC4(sc, res_count);
		else
			sc->result = (DID_BAD_TARGET << 16) | rhdr->cmd_status;
	}

	FUNC0(conn->session, "data in with status done "
			  "[sc %p res %d itt 0x%x]\n",
			  sc, sc->result, task->itt);
	conn->scsirsp_pdus_cnt++;
	FUNC2(task, ISCSI_TASK_COMPLETED);
}