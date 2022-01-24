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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_scsi_req {int /*<<< orphan*/  cmdsn; } ;
struct TYPE_2__ {scalar_t__ data_length; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_state; int /*<<< orphan*/  conn; scalar_t__ unsolicited_data; TYPE_1__ se_cmd; scalar_t__ sense_reason; int /*<<< orphan*/  first_burst_len; scalar_t__ write_data_done; } ;

/* Variables and functions */
 int CMDSN_ERROR_CANNOT_RECOVER ; 
 int CMDSN_LOWER_THAN_EXP ; 
 int IMMEDIATE_DATA_CANNOT_RECOVER ; 
 int IMMEDIATE_DATA_ERL1_CRC_FAILURE ; 
 int IMMEDIATE_DATA_NORMAL_OPERATION ; 
 int /*<<< orphan*/  ISTATE_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct iscsi_cmd*,struct iscsi_scsi_req*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iscsi_cmd*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(struct iscsi_cmd *cmd, struct iscsi_scsi_req *hdr,
			  bool dump_payload)
{
	int cmdsn_ret = 0, immed_ret = IMMEDIATE_DATA_NORMAL_OPERATION;
	int rc;

	/*
	 * Special case for Unsupported SAM WRITE Opcodes and ImmediateData=Yes.
	 */
	if (dump_payload) {
		u32 length = FUNC5(cmd->se_cmd.data_length - cmd->write_data_done,
				 cmd->first_burst_len);

		FUNC6("Dumping min(%d - %d, %d) = %d bytes of immediate data\n",
			 cmd->se_cmd.data_length, cmd->write_data_done,
			 cmd->first_burst_len, length);
		rc = FUNC1(cmd->conn, length, 1);
		FUNC6("Finished dumping immediate data\n");
		if (rc < 0)
			immed_ret = IMMEDIATE_DATA_CANNOT_RECOVER;
	} else {
		immed_ret = FUNC2(cmd, hdr,
							 cmd->first_burst_len);
	}

	if (immed_ret == IMMEDIATE_DATA_NORMAL_OPERATION) {
		/*
		 * A PDU/CmdSN carrying Immediate Data passed
		 * DataCRC, check against ExpCmdSN/MaxCmdSN if
		 * Immediate Bit is not set.
		 */
		cmdsn_ret = FUNC3(cmd->conn, cmd,
					(unsigned char *)hdr, hdr->cmdsn);
		if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
			return -1;

		if (cmd->sense_reason || cmdsn_ret == CMDSN_LOWER_THAN_EXP) {
			FUNC7(&cmd->se_cmd);

			return 0;
		} else if (cmd->unsolicited_data)
			FUNC4(cmd);

	} else if (immed_ret == IMMEDIATE_DATA_ERL1_CRC_FAILURE) {
		/*
		 * Immediate Data failed DataCRC and ERL>=1,
		 * silently drop this PDU and let the initiator
		 * plug the CmdSN gap.
		 *
		 * FIXME: Send Unsolicited NOPIN with reserved
		 * TTT here to help the initiator figure out
		 * the missing CmdSN, although they should be
		 * intelligent enough to determine the missing
		 * CmdSN and issue a retry to plug the sequence.
		 */
		cmd->i_state = ISTATE_REMOVE;
		FUNC0(cmd, cmd->conn, cmd->i_state);
	} else /* immed_ret == IMMEDIATE_DATA_CANNOT_RECOVER */
		return -1;

	return 0;
}