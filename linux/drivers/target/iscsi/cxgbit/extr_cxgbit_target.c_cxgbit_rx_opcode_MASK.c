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
typedef  int u8 ;
struct iscsi_hdr {int opcode; } ;
struct iscsi_conn {scalar_t__ conn_state; TYPE_2__* sess; } ;
struct cxgbit_sock {struct iscsi_conn* conn; int /*<<< orphan*/  skb; } ;
struct cxgbit_lro_pdu_cb {int flags; struct iscsi_hdr* hdr; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; int /*<<< orphan*/  conn_digest_errors; } ;
struct TYPE_3__ {scalar_t__ SessionType; } ;

/* Variables and functions */
 int ISCSI_OPCODE_MASK ; 
 int ISCSI_OP_LOGOUT ; 
 int ISCSI_OP_TEXT ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int PDUCBF_RX_HCRC_ERR ; 
 scalar_t__ TARG_CONN_STATE_IN_LOGOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cxgbit_lro_pdu_cb* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cxgbit_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct cxgbit_sock *csk)
{
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC1(csk->skb);
	struct iscsi_conn *conn = csk->conn;
	struct iscsi_hdr *hdr = pdu_cb->hdr;
	u8 opcode;

	if (pdu_cb->flags & PDUCBF_RX_HCRC_ERR) {
		FUNC0(&conn->sess->conn_digest_errors);
		goto transport_err;
	}

	if (conn->conn_state == TARG_CONN_STATE_IN_LOGOUT)
		goto transport_err;

	opcode = hdr->opcode & ISCSI_OPCODE_MASK;

	if (conn->sess->sess_ops->SessionType &&
	    ((!(opcode & ISCSI_OP_TEXT)) ||
	     (!(opcode & ISCSI_OP_LOGOUT)))) {
		FUNC4("Received illegal iSCSI Opcode: 0x%02x"
			" while in Discovery Session, rejecting.\n", opcode);
		FUNC3(conn, ISCSI_REASON_PROTOCOL_ERROR,
				  (unsigned char *)hdr);
		goto transport_err;
	}

	if (FUNC2(csk) < 0)
		goto transport_err;

	return 0;

transport_err:
	return -1;
}