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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct iscsi_tcp_task {int /*<<< orphan*/  exp_datasn; } ;
struct iscsi_tcp_conn {int dummy; } ;
struct iscsi_task {struct iscsi_tcp_task* dd_data; scalar_t__ sc; } ;
struct iscsi_hdr {scalar_t__ opcode; } ;
struct iscsi_data {int /*<<< orphan*/  datasn; int /*<<< orphan*/  itt; } ;
struct iscsi_conn {scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct cxgbi_sock {int dummy; } ;
typedef  int /*<<< orphan*/  itt_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_LOGOUT_RSP_RCVD ; 
 int CXGBI_DBG_PDU_RX ; 
 int EIO ; 
 int /*<<< orphan*/  ISCSI_ERR_HDR_DGST ; 
 int /*<<< orphan*/  ISCSI_ERR_PROTO ; 
 scalar_t__ ISCSI_OPCODE_MASK ; 
 scalar_t__ ISCSI_OP_LOGOUT_RSP ; 
 int /*<<< orphan*/  SKCBF_RX_DATA_DDPD ; 
 int /*<<< orphan*/  SKCBF_RX_HCRC_ERR ; 
 int /*<<< orphan*/  SKCBF_RX_ISCSI_COMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 struct iscsi_task* FUNC5 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_tcp_conn*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,struct iscsi_conn*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct iscsi_conn*,struct sk_buff*) ; 
 int FUNC10 (struct iscsi_conn*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct cxgbi_sock *csk, struct iscsi_conn *conn,
		 struct sk_buff *skb)
{
	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
	int err;

	FUNC8(1 << CXGBI_DBG_PDU_RX,
		"conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\n",
		conn, skb, skb->len, FUNC1(skb));

	if (!FUNC6(tcp_conn)) {
		FUNC9("conn 0x%p, skb 0x%p, not hdr.\n", conn, skb);
		FUNC4(conn, ISCSI_ERR_PROTO);
		return -EIO;
	}

	if (conn->hdrdgst_en &&
	    FUNC2(skb, SKCBF_RX_HCRC_ERR)) {
		FUNC9("conn 0x%p, skb 0x%p, hcrc.\n", conn, skb);
		FUNC4(conn, ISCSI_ERR_HDR_DGST);
		return -EIO;
	}

	if (FUNC2(skb, SKCBF_RX_ISCSI_COMPL) &&
	    FUNC2(skb, SKCBF_RX_DATA_DDPD)) {
		/* If completion flag is set and data is directly
		 * placed in to the host memory then update
		 * task->exp_datasn to the datasn in completion
		 * iSCSI hdr as T6 adapter generates completion only
		 * for the last pdu of a sequence.
		 */
		itt_t itt = ((struct iscsi_data *)skb->data)->itt;
		struct iscsi_task *task = FUNC5(conn, itt);
		u32 data_sn = FUNC0(((struct iscsi_data *)
							skb->data)->datasn);
		if (task && task->sc) {
			struct iscsi_tcp_task *tcp_task = task->dd_data;

			tcp_task->exp_datasn = data_sn;
		}
	}

	err = FUNC10(conn, skb, 0, 0);
	if (FUNC7(err >= 0)) {
		struct iscsi_hdr *hdr = (struct iscsi_hdr *)skb->data;
		u8 opcode = hdr->opcode & ISCSI_OPCODE_MASK;

		if (FUNC11(opcode == ISCSI_OP_LOGOUT_RSP))
			FUNC3(csk, CTPF_LOGOUT_RSP_RCVD);
	}

	return err;
}