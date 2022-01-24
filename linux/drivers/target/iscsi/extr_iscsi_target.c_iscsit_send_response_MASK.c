#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iscsi_scsi_rsp {int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_2__* conn_transport; } ;
struct TYPE_3__ {int se_cmd_flags; int scsi_sense_length; scalar_t__ sense_buffer; } ;
struct iscsi_cmd {scalar_t__ i_state; TYPE_1__ se_cmd; void* sense_buffer; int /*<<< orphan*/ * pdu; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,void*,int) ;} ;

/* Variables and functions */
 scalar_t__ ISTATE_SEND_STATUS ; 
 int SCF_EMULATED_TASK_SENSE ; 
 int SCF_TRANSPORT_TASK_SENSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,struct iscsi_conn*,int,struct iscsi_scsi_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,void*) ; 
 int FUNC5 (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC6(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
	struct iscsi_scsi_rsp *hdr = (struct iscsi_scsi_rsp *)&cmd->pdu[0];
	bool inc_stat_sn = (cmd->i_state == ISTATE_SEND_STATUS);
	void *data_buf = NULL;
	u32 padding = 0, data_buf_len = 0;

	FUNC1(cmd, conn, inc_stat_sn, hdr);

	/*
	 * Attach SENSE DATA payload to iSCSI Response PDU
	 */
	if (cmd->se_cmd.sense_buffer &&
	   ((cmd->se_cmd.se_cmd_flags & SCF_TRANSPORT_TASK_SENSE) ||
	    (cmd->se_cmd.se_cmd_flags & SCF_EMULATED_TASK_SENSE))) {
		FUNC4(cmd->se_cmd.scsi_sense_length, cmd->sense_buffer);
		cmd->se_cmd.scsi_sense_length += sizeof (__be16);

		padding		= -(cmd->se_cmd.scsi_sense_length) & 3;
		FUNC0(hdr->dlength, (u32)cmd->se_cmd.scsi_sense_length);
		data_buf = cmd->sense_buffer;
		data_buf_len = cmd->se_cmd.scsi_sense_length + padding;

		if (padding) {
			FUNC2(cmd->sense_buffer +
				cmd->se_cmd.scsi_sense_length, 0, padding);
			FUNC3("Adding %u bytes of padding to"
				" SENSE.\n", padding);
		}

		FUNC3("Attaching SENSE DATA: %u bytes to iSCSI"
				" Response PDU\n",
				cmd->se_cmd.scsi_sense_length);
	}

	return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL, data_buf,
						     data_buf_len);
}