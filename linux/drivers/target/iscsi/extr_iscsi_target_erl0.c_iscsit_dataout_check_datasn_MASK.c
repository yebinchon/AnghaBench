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
typedef  scalar_t__ u32 ;
struct iscsi_seq {scalar_t__ data_sn; } ;
struct iscsi_data {int /*<<< orphan*/  datasn; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {scalar_t__ data_sn; int /*<<< orphan*/  init_task_tag; struct iscsi_seq* seq_ptr; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ErrorRecoveryLevel; scalar_t__ DataSequenceInOrder; } ;

/* Variables and functions */
 int DATAOUT_CANNOT_RECOVER ; 
 int DATAOUT_NORMAL ; 
 int DATAOUT_WITHIN_COMMAND_RECOVERY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iscsi_conn*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(
	struct iscsi_cmd *cmd,
	unsigned char *buf)
{
	u32 data_sn = 0;
	struct iscsi_conn *conn = cmd->conn;
	struct iscsi_data *hdr = (struct iscsi_data *) buf;
	u32 payload_length = FUNC2(hdr->dlength);

	/*
	 * Considering the target has no method of re-requesting DataOUT
	 * by DataSN, if we receieve a greater DataSN than expected we
	 * assume the functions for DataPDUInOrder=[Yes,No] below will
	 * handle it.
	 *
	 * If the DataSN is less than expected, dump the payload.
	 */
	if (conn->sess->sess_ops->DataSequenceInOrder)
		data_sn = cmd->data_sn;
	else {
		struct iscsi_seq *seq = cmd->seq_ptr;
		data_sn = seq->data_sn;
	}

	if (FUNC0(hdr->datasn) > data_sn) {
		FUNC3("Command ITT: 0x%08x, received DataSN: 0x%08x"
			" higher than expected 0x%08x.\n", cmd->init_task_tag,
				FUNC0(hdr->datasn), data_sn);
		goto recover;
	} else if (FUNC0(hdr->datasn) < data_sn) {
		FUNC3("Command ITT: 0x%08x, received DataSN: 0x%08x"
			" lower than expected 0x%08x, discarding payload.\n",
			cmd->init_task_tag, FUNC0(hdr->datasn), data_sn);
		goto dump;
	}

	return DATAOUT_NORMAL;

recover:
	if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
		FUNC3("Unable to perform within-command recovery"
				" while ERL=0.\n");
		return DATAOUT_CANNOT_RECOVER;
	}
dump:
	if (FUNC1(conn, payload_length, 1) < 0)
		return DATAOUT_CANNOT_RECOVER;

	return DATAOUT_WITHIN_COMMAND_RECOVERY;
}