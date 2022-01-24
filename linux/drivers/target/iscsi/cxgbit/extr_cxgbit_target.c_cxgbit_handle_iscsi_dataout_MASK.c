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
struct scatterlist {int dummy; } ;
struct iscsi_data {int /*<<< orphan*/  datasn; int /*<<< orphan*/  offset; int /*<<< orphan*/  itt; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_1__* sess; } ;
struct TYPE_4__ {struct scatterlist* t_data_sg; int /*<<< orphan*/  data_length; } ;
struct iscsi_cmd {int write_data_done; int next_burst_len; TYPE_2__ se_cmd; void* data_sn; } ;
struct cxgbit_sock {int /*<<< orphan*/  skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {int dlen; int flags; scalar_t__ hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_data_octets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int PAGE_SIZE ; 
 int PDUCBF_RX_DATA_DDPD ; 
 int PDUCBF_RX_DCRC_ERR ; 
 int PDUCBF_RX_DDP_CMP ; 
 int FUNC1 (struct iscsi_conn*,unsigned char*,struct iscsi_cmd*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct cxgbit_lro_pdu_cb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scatterlist*,int,int) ; 
 int FUNC6 (struct iscsi_conn*,unsigned char*,struct iscsi_cmd**) ; 
 int FUNC7 (struct iscsi_cmd*,struct iscsi_data*,int) ; 
 struct iscsi_cmd* FUNC8 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct cxgbit_sock *csk)
{
	struct scatterlist *sg_start;
	struct iscsi_conn *conn = csk->conn;
	struct iscsi_cmd *cmd = NULL;
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC4(csk->skb);
	struct iscsi_data *hdr = (struct iscsi_data *)pdu_cb->hdr;
	u32 data_offset = FUNC3(hdr->offset);
	u32 data_len = pdu_cb->dlen;
	int rc, sg_nents, sg_off;
	bool dcrc_err = false;

	if (pdu_cb->flags & PDUCBF_RX_DDP_CMP) {
		u32 offset = FUNC3(hdr->offset);
		u32 ddp_data_len;
		u32 payload_length = FUNC10(hdr->dlength);
		bool success = false;

		cmd = FUNC8(conn, hdr->itt, 0);
		if (!cmd)
			return 0;

		ddp_data_len = offset - cmd->write_data_done;
		FUNC2(ddp_data_len, &conn->sess->rx_data_octets);

		cmd->write_data_done = offset;
		cmd->next_burst_len = ddp_data_len;
		cmd->data_sn = FUNC3(hdr->datasn);

		rc = FUNC1(conn, (unsigned char *)hdr,
						cmd, payload_length, &success);
		if (rc < 0)
			return rc;
		else if (!success)
			return 0;
	} else {
		rc = FUNC6(conn, (unsigned char *)hdr, &cmd);
		if (rc < 0)
			return rc;
		else if (!cmd)
			return 0;
	}

	if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
		FUNC12("ITT: 0x%08x, Offset: %u, Length: %u,"
		       " DataSN: 0x%08x\n",
		       hdr->itt, hdr->offset, data_len,
		       hdr->datasn);

		dcrc_err = true;
		goto check_payload;
	}

	FUNC11("DataOut data_len: %u, "
		"write_data_done: %u, data_length: %u\n",
		  data_len,  cmd->write_data_done,
		  cmd->se_cmd.data_length);

	if (!(pdu_cb->flags & PDUCBF_RX_DATA_DDPD)) {
		u32 skip = data_offset % PAGE_SIZE;

		sg_off = data_offset / PAGE_SIZE;
		sg_start = &cmd->se_cmd.t_data_sg[sg_off];
		sg_nents = FUNC9(1UL, FUNC0(skip + data_len, PAGE_SIZE));

		FUNC5(csk->skb, sg_start, sg_nents, skip);
	}

check_payload:

	rc = FUNC7(cmd, hdr, dcrc_err);
	if (rc < 0)
		return rc;

	return 0;
}