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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_seq {scalar_t__ status; scalar_t__ offset; scalar_t__ data_sn; } ;
struct iscsi_data {int /*<<< orphan*/  datasn; int /*<<< orphan*/  offset; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {int cmd_flags; scalar_t__ write_data_done; struct iscsi_seq* seq_ptr; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ DataPDUInOrder; scalar_t__ DataSequenceInOrder; } ;

/* Variables and functions */
 int DATAOUT_CANNOT_RECOVER ; 
 int DATAOUT_NORMAL ; 
 scalar_t__ DATAOUT_SEQUENCE_COMPLETE ; 
 scalar_t__ DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY ; 
 int ICF_WITHIN_COMMAND_RECOVERY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ,int) ; 
 struct iscsi_seq* FUNC2 (struct iscsi_cmd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
	struct iscsi_cmd *cmd,
	unsigned char *buf)
{
	struct iscsi_conn *conn = cmd->conn;
	struct iscsi_data *hdr = (struct iscsi_data *) buf;
	u32 payload_length = FUNC3(hdr->dlength);

	/*
	 * We do the within-command recovery checks here as it is
	 * the first function called in iscsi_check_pre_dataout().
	 * Basically, if we are in within-command recovery and
	 * the PDU does not contain the offset the sequence needs,
	 * dump the payload.
	 *
	 * This only applies to DataPDUInOrder=Yes, for
	 * DataPDUInOrder=No we only re-request the failed PDU
	 * and check that all PDUs in a sequence are received
	 * upon end of sequence.
	 */
	if (conn->sess->sess_ops->DataSequenceInOrder) {
		if ((cmd->cmd_flags & ICF_WITHIN_COMMAND_RECOVERY) &&
		    cmd->write_data_done != FUNC0(hdr->offset))
			goto dump;

		cmd->cmd_flags &= ~ICF_WITHIN_COMMAND_RECOVERY;
	} else {
		struct iscsi_seq *seq;

		seq = FUNC2(cmd, FUNC0(hdr->offset),
					    payload_length);
		if (!seq)
			return DATAOUT_CANNOT_RECOVER;
		/*
		 * Set the struct iscsi_seq pointer to reuse later.
		 */
		cmd->seq_ptr = seq;

		if (conn->sess->sess_ops->DataPDUInOrder) {
			if (seq->status ==
			    DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY &&
			   (seq->offset != FUNC0(hdr->offset) ||
			    seq->data_sn != FUNC0(hdr->datasn)))
				goto dump;
		} else {
			if (seq->status ==
			     DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY &&
			    seq->data_sn != FUNC0(hdr->datasn))
				goto dump;
		}

		if (seq->status == DATAOUT_SEQUENCE_COMPLETE)
			goto dump;

		if (seq->status != DATAOUT_SEQUENCE_COMPLETE)
			seq->status = 0;
	}

	return DATAOUT_NORMAL;

dump:
	FUNC4("Dumping DataOUT PDU Offset: %u Length: %d DataSN:"
		" 0x%08x\n", hdr->offset, payload_length, hdr->datasn);
	return FUNC1(conn, payload_length, 1);
}