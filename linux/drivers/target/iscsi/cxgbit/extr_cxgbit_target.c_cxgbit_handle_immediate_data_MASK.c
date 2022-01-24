#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct skb_shared_info {int /*<<< orphan*/ * frags; } ;
struct scatterlist {int dummy; } ;
struct iscsi_scsi_req {int dummy; } ;
struct iscsi_conn {TYPE_2__* sess; struct cxgbit_sock* context; } ;
struct TYPE_6__ {int se_cmd_flags; int t_data_nents; scalar_t__ data_length; struct scatterlist* t_data_sg; } ;
struct iscsi_cmd {scalar_t__ write_data_done; int /*<<< orphan*/  istate_lock; int /*<<< orphan*/  i_state; int /*<<< orphan*/  cmd_flags; TYPE_3__ se_cmd; struct iscsi_conn* conn; } ;
struct cxgbit_sock {int /*<<< orphan*/  skb; } ;
struct cxgbit_lro_pdu_cb {int flags; size_t dfrag_idx; scalar_t__ dlen; } ;
struct cxgbit_cmd {int release; struct scatterlist sg; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_5__ {TYPE_1__* sess_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICF_GOT_LAST_DATAOUT ; 
 int IMMEDIATE_DATA_CANNOT_RECOVER ; 
 int IMMEDIATE_DATA_ERL1_CRC_FAILURE ; 
 int IMMEDIATE_DATA_NORMAL_OPERATION ; 
 int /*<<< orphan*/  ISCSI_REASON_DATA_DIGEST_ERROR ; 
 int /*<<< orphan*/  ISTATE_RECEIVED_LAST_DATAOUT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PDUCBF_RX_DCRC_ERR ; 
 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ; 
 struct cxgbit_lro_pdu_cb* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cxgbit_cmd* FUNC4 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct skb_shared_info* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(struct iscsi_cmd *cmd, struct iscsi_scsi_req *hdr,
			     u32 length)
{
	struct iscsi_conn *conn = cmd->conn;
	struct cxgbit_sock *csk = conn->context;
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC1(csk->skb);

	if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
		FUNC7("ImmediateData CRC32C DataDigest error\n");
		if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
			FUNC7("Unable to recover from"
			       " Immediate Data digest failure while"
			       " in ERL=0.\n");
			FUNC5(cmd, ISCSI_REASON_DATA_DIGEST_ERROR,
					  (unsigned char *)hdr);
			return IMMEDIATE_DATA_CANNOT_RECOVER;
		}

		FUNC5(cmd, ISCSI_REASON_DATA_DIGEST_ERROR,
				  (unsigned char *)hdr);
		return IMMEDIATE_DATA_ERL1_CRC_FAILURE;
	}

	if (cmd->se_cmd.se_cmd_flags & SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC) {
		struct cxgbit_cmd *ccmd = FUNC4(cmd);
		struct skb_shared_info *ssi = FUNC13(csk->skb);
		skb_frag_t *dfrag = &ssi->frags[pdu_cb->dfrag_idx];

		FUNC8(&ccmd->sg, 1);
		FUNC9(&ccmd->sg, FUNC11(dfrag),
				FUNC12(dfrag), FUNC10(dfrag));
		FUNC3(FUNC11(dfrag));

		cmd->se_cmd.t_data_sg = &ccmd->sg;
		cmd->se_cmd.t_data_nents = 1;

		ccmd->release = true;
	} else {
		struct scatterlist *sg = &cmd->se_cmd.t_data_sg[0];
		u32 sg_nents = FUNC6(1UL, FUNC0(pdu_cb->dlen, PAGE_SIZE));

		FUNC2(csk->skb, sg, sg_nents, 0);
	}

	cmd->write_data_done += pdu_cb->dlen;

	if (cmd->write_data_done == cmd->se_cmd.data_length) {
		FUNC14(&cmd->istate_lock);
		cmd->cmd_flags |= ICF_GOT_LAST_DATAOUT;
		cmd->i_state = ISTATE_RECEIVED_LAST_DATAOUT;
		FUNC15(&cmd->istate_lock);
	}

	return IMMEDIATE_DATA_NORMAL_OPERATION;
}