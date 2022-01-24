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
struct iscsi_hdr {int opcode; int /*<<< orphan*/  itt; int /*<<< orphan*/  ttt; } ;
struct iscsi_conn {TYPE_2__* sess; int /*<<< orphan*/  conn_logout_comp; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;

/* Variables and functions */
 int HZ ; 
 int ISCSI_OPCODE_MASK ; 
#define  ISCSI_OP_LOGOUT 134 
#define  ISCSI_OP_NOOP_OUT 133 
#define  ISCSI_OP_SCSI_CMD 132 
#define  ISCSI_OP_SCSI_DATA_OUT 131 
#define  ISCSI_OP_SCSI_TMFUNC 130 
#define  ISCSI_OP_SNACK 129 
#define  ISCSI_OP_TEXT 128 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_NO_RESOURCES ; 
 int SECONDS_FOR_LOGOUT_COMP ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ,unsigned char*) ; 
 struct iscsi_cmd* FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 struct iscsi_cmd* FUNC3 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iscsi_conn*,unsigned char*) ; 
 int FUNC5 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int FUNC6 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int FUNC7 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int FUNC8 (struct iscsi_conn*,unsigned char*) ; 
 int FUNC9 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int FUNC10 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13(struct iscsi_conn *conn, unsigned char *buf)
{
	struct iscsi_hdr *hdr = (struct iscsi_hdr *)buf;
	struct iscsi_cmd *cmd;
	int ret = 0;

	switch (hdr->opcode & ISCSI_OPCODE_MASK) {
	case ISCSI_OP_SCSI_CMD:
		cmd = FUNC2(conn, TASK_INTERRUPTIBLE);
		if (!cmd)
			goto reject;

		ret = FUNC7(conn, cmd, buf);
		break;
	case ISCSI_OP_SCSI_DATA_OUT:
		ret = FUNC4(conn, buf);
		break;
	case ISCSI_OP_NOOP_OUT:
		cmd = NULL;
		if (hdr->ttt == FUNC0(0xFFFFFFFF)) {
			cmd = FUNC2(conn, TASK_INTERRUPTIBLE);
			if (!cmd)
				goto reject;
		}
		ret = FUNC6(conn, cmd, buf);
		break;
	case ISCSI_OP_SCSI_TMFUNC:
		cmd = FUNC2(conn, TASK_INTERRUPTIBLE);
		if (!cmd)
			goto reject;

		ret = FUNC9(conn, cmd, buf);
		break;
	case ISCSI_OP_TEXT:
		if (hdr->ttt != FUNC0(0xFFFFFFFF)) {
			cmd = FUNC3(conn, hdr->itt);
			if (!cmd)
				goto reject;
		} else {
			cmd = FUNC2(conn, TASK_INTERRUPTIBLE);
			if (!cmd)
				goto reject;
		}

		ret = FUNC10(conn, cmd, buf);
		break;
	case ISCSI_OP_LOGOUT:
		cmd = FUNC2(conn, TASK_INTERRUPTIBLE);
		if (!cmd)
			goto reject;

		ret = FUNC5(conn, cmd, buf);
		if (ret > 0)
			FUNC12(&conn->conn_logout_comp,
					SECONDS_FOR_LOGOUT_COMP * HZ);
		break;
	case ISCSI_OP_SNACK:
		ret = FUNC8(conn, buf);
		break;
	default:
		FUNC11("Got unknown iSCSI OpCode: 0x%02x\n", hdr->opcode);
		if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
			FUNC11("Cannot recover from unknown"
			" opcode while ERL=0, closing iSCSI connection.\n");
			return -1;
		}
		FUNC11("Unable to recover from unknown opcode while OFMarker=No,"
		       " closing iSCSI connection.\n");
		ret = -1;
		break;
	}

	return ret;
reject:
	return FUNC1(conn, ISCSI_REASON_BOOKMARK_NO_RESOURCES, buf);
}