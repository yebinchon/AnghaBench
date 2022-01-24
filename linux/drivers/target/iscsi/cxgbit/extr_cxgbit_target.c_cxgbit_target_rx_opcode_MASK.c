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
typedef  int u8 ;
struct iscsi_hdr {int opcode; int /*<<< orphan*/  itt; int /*<<< orphan*/  ttt; } ;
struct iscsi_conn {int /*<<< orphan*/  conn_logout_comp; } ;
struct iscsi_cmd {int dummy; } ;
struct cxgbit_sock {struct iscsi_conn* conn; int /*<<< orphan*/  skb; } ;
struct cxgbit_lro_pdu_cb {scalar_t__ hdr; } ;

/* Variables and functions */
 int EINVAL ; 
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct iscsi_cmd* FUNC1 (struct cxgbit_sock*) ; 
 int FUNC2 (struct cxgbit_sock*) ; 
 int FUNC3 (struct cxgbit_sock*,struct iscsi_cmd*) ; 
 int FUNC4 (struct cxgbit_sock*,struct iscsi_cmd*) ; 
 int FUNC5 (struct cxgbit_sock*,struct iscsi_cmd*) ; 
 struct cxgbit_lro_pdu_cb* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct iscsi_conn*,int /*<<< orphan*/ ,unsigned char*) ; 
 struct iscsi_cmd* FUNC9 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int FUNC11 (struct iscsi_conn*,unsigned char*) ; 
 int FUNC12 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(struct cxgbit_sock *csk)
{
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC6(csk->skb);
	struct iscsi_hdr *hdr = (struct iscsi_hdr *)pdu_cb->hdr;
	struct iscsi_conn *conn = csk->conn;
	struct iscsi_cmd *cmd = NULL;
	u8 opcode = (hdr->opcode & ISCSI_OPCODE_MASK);
	int ret = -EINVAL;

	switch (opcode) {
	case ISCSI_OP_SCSI_CMD:
		cmd = FUNC1(csk);
		if (!cmd)
			goto reject;

		ret = FUNC4(csk, cmd);
		break;
	case ISCSI_OP_SCSI_DATA_OUT:
		ret = FUNC2(csk);
		break;
	case ISCSI_OP_NOOP_OUT:
		if (hdr->ttt == FUNC0(0xFFFFFFFF)) {
			cmd = FUNC1(csk);
			if (!cmd)
				goto reject;
		}

		ret = FUNC3(csk, cmd);
		break;
	case ISCSI_OP_SCSI_TMFUNC:
		cmd = FUNC1(csk);
		if (!cmd)
			goto reject;

		ret = FUNC12(conn, cmd,
						 (unsigned char *)hdr);
		break;
	case ISCSI_OP_TEXT:
		if (hdr->ttt != FUNC0(0xFFFFFFFF)) {
			cmd = FUNC9(conn, hdr->itt);
			if (!cmd)
				goto reject;
		} else {
			cmd = FUNC1(csk);
			if (!cmd)
				goto reject;
		}

		ret = FUNC5(csk, cmd);
		break;
	case ISCSI_OP_LOGOUT:
		cmd = FUNC1(csk);
		if (!cmd)
			goto reject;

		ret = FUNC10(conn, cmd, (unsigned char *)hdr);
		if (ret > 0)
			FUNC14(&conn->conn_logout_comp,
						    SECONDS_FOR_LOGOUT_COMP
						    * HZ);
		break;
	case ISCSI_OP_SNACK:
		ret = FUNC11(conn, (unsigned char *)hdr);
		break;
	default:
		FUNC13("Got unknown iSCSI OpCode: 0x%02x\n", opcode);
		FUNC7();
		break;
	}

	return ret;

reject:
	return FUNC8(conn, ISCSI_REASON_BOOKMARK_NO_RESOURCES,
				 (unsigned char *)hdr);
	return ret;
}