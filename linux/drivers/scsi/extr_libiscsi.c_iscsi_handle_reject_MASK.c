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
struct iscsi_task {int dummy; } ;
struct iscsi_reject {int reason; int /*<<< orphan*/  dlength; int /*<<< orphan*/  statsn; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int opcode; int /*<<< orphan*/  itt; } ;
struct iscsi_conn {TYPE_1__* session; scalar_t__ exp_statsn; } ;
struct TYPE_2__ {int /*<<< orphan*/  back_lock; int /*<<< orphan*/  frwd_lock; } ;

/* Variables and functions */
 int ISCSI_ERR_BAD_ITT ; 
 int ISCSI_ERR_PROTO ; 
 int ISCSI_OPCODE_MASK ; 
 int ISCSI_OP_NOOP_OUT ; 
#define  ISCSI_REASON_DATA_DIGEST_ERROR 129 
#define  ISCSI_REASON_IMM_CMD_REJECT 128 
 int /*<<< orphan*/  ISCSI_RESERVED_TAG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,...) ; 
 struct iscsi_task* FUNC3 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iscsi_task*,struct iscsi_nopin*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*,struct iscsi_nopin*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_hdr*,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
			       char *data, int datalen)
{
	struct iscsi_reject *reject = (struct iscsi_reject *)hdr;
	struct iscsi_hdr rejected_pdu;
	int opcode, rc = 0;

	conn->exp_statsn = FUNC0(reject->statsn) + 1;

	if (FUNC7(reject->dlength) > datalen ||
	    FUNC7(reject->dlength) < sizeof(struct iscsi_hdr)) {
		FUNC2(KERN_ERR, conn, "Cannot handle rejected "
				  "pdu. Invalid data length (pdu dlength "
				  "%u, datalen %d\n", FUNC7(reject->dlength),
				  datalen);
		return ISCSI_ERR_PROTO;
	}
	FUNC6(&rejected_pdu, data, sizeof(struct iscsi_hdr));
	opcode = rejected_pdu.opcode & ISCSI_OPCODE_MASK;

	switch (reject->reason) {
	case ISCSI_REASON_DATA_DIGEST_ERROR:
		FUNC2(KERN_ERR, conn,
				  "pdu (op 0x%x itt 0x%x) rejected "
				  "due to DataDigest error.\n",
				  opcode, rejected_pdu.itt);
		break;
	case ISCSI_REASON_IMM_CMD_REJECT:
		FUNC2(KERN_ERR, conn,
				  "pdu (op 0x%x itt 0x%x) rejected. Too many "
				  "immediate commands.\n",
				  opcode, rejected_pdu.itt);
		/*
		 * We only send one TMF at a time so if the target could not
		 * handle it, then it should get fixed (RFC mandates that
		 * a target can handle one immediate TMF per conn).
		 *
		 * For nops-outs, we could have sent more than one if
		 * the target is sending us lots of nop-ins
		 */
		if (opcode != ISCSI_OP_NOOP_OUT)
			return 0;

		if (rejected_pdu.itt == FUNC1(ISCSI_RESERVED_TAG)) {
			/*
			 * nop-out in response to target's nop-out rejected.
			 * Just resend.
			 */
			/* In RX path we are under back lock */
			FUNC9(&conn->session->back_lock);
			FUNC8(&conn->session->frwd_lock);
			FUNC5(conn,
					  (struct iscsi_nopin*)&rejected_pdu);
			FUNC9(&conn->session->frwd_lock);
			FUNC8(&conn->session->back_lock);
		} else {
			struct iscsi_task *task;
			/*
			 * Our nop as ping got dropped. We know the target
			 * and transport are ok so just clean up
			 */
			task = FUNC3(conn, rejected_pdu.itt);
			if (!task) {
				FUNC2(KERN_ERR, conn,
						 "Invalid pdu reject. Could "
						 "not lookup rejected task.\n");
				rc = ISCSI_ERR_BAD_ITT;
			} else
				rc = FUNC4(task,
					(struct iscsi_nopin*)&rejected_pdu,
					NULL, 0);
		}
		break;
	default:
		FUNC2(KERN_ERR, conn,
				  "pdu (op 0x%x itt 0x%x) rejected. Reason "
				  "code 0x%x\n", rejected_pdu.opcode,
				  rejected_pdu.itt, reject->reason);
		break;
	}
	return rc;
}