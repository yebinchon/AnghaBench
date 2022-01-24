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
struct iscsi_nopout {scalar_t__ ttt; int /*<<< orphan*/  cmdsn; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {unsigned char* buf_ptr; int buf_ptr_size; } ;
struct cxgbit_sock {int /*<<< orphan*/  skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {int dlen; int flags; int /*<<< orphan*/  doffset; scalar_t__ hdr; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PDUCBF_RX_DCRC_ERR ; 
 scalar_t__ FUNC0 (int) ; 
 struct cxgbit_lro_pdu_cb* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*,int) ; 
 int FUNC3 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ; 
 int FUNC4 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ; 
 unsigned char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC10(struct cxgbit_sock *csk, struct iscsi_cmd *cmd)
{
	struct iscsi_conn *conn = csk->conn;
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC1(csk->skb);
	struct iscsi_nopout *hdr = (struct iscsi_nopout *)pdu_cb->hdr;
	unsigned char *ping_data = NULL;
	u32 payload_length = pdu_cb->dlen;
	int ret;

	ret = FUNC4(conn, cmd, hdr);
	if (ret < 0)
		return 0;

	if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
		if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
			FUNC7("Unable to recover from"
			       " NOPOUT Ping DataCRC failure while in"
			       " ERL=0.\n");
			ret = -1;
			goto out;
		} else {
			/*
			 * drop this PDU and let the
			 * initiator plug the CmdSN gap.
			 */
			FUNC8("Dropping NOPOUT"
				" Command CmdSN: 0x%08x due to"
				" DataCRC error.\n", hdr->cmdsn);
			ret = 0;
			goto out;
		}
	}

	/*
	 * Handle NOP-OUT payload for traditional iSCSI sockets
	 */
	if (payload_length && hdr->ttt == FUNC0(0xFFFFFFFF)) {
		ping_data = FUNC5(payload_length + 1, GFP_KERNEL);
		if (!ping_data) {
			FUNC7("Unable to allocate memory for"
				" NOPOUT ping data.\n");
			ret = -1;
			goto out;
		}

		FUNC9(csk->skb, pdu_cb->doffset,
			      ping_data, payload_length);

		ping_data[payload_length] = '\0';
		/*
		 * Attach ping data to struct iscsi_cmd->buf_ptr.
		 */
		cmd->buf_ptr = ping_data;
		cmd->buf_ptr_size = payload_length;

		FUNC6("Got %u bytes of NOPOUT ping"
			" data.\n", payload_length);
		FUNC6("Ping Data: \"%s\"\n", ping_data);
	}

	return FUNC3(conn, cmd, hdr);
out:
	if (cmd)
		FUNC2(cmd, false);
	return ret;
}