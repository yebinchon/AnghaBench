#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct iscsi_async_msg_hdr {int hdr_second_dword; int /*<<< orphan*/  param3_rsrv; int /*<<< orphan*/  param2_rsrv; int /*<<< orphan*/  param1_rsrv; int /*<<< orphan*/  async_vcode; int /*<<< orphan*/  async_event; int /*<<< orphan*/  stat_sn; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  exp_cmd_sn; TYPE_5__ lun; int /*<<< orphan*/  opcode; } ;
struct TYPE_7__ {struct iscsi_async_msg_hdr async_msg; } ;
struct TYPE_8__ {scalar_t__ cqe_type; TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {int /*<<< orphan*/  cqe_unsolicited; TYPE_3__ cqe_common; } ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsi_lun {int dummy; } ;
struct qedi_ctx {int /*<<< orphan*/  hba_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  resp_hdr; } ;
struct qedi_conn {TYPE_4__ gen_pdu; TYPE_1__* cls_conn; } ;
struct iscsi_task {int dummy; } ;
struct iscsi_session {int /*<<< orphan*/  back_lock; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct iscsi_async {int flags; void* param3; void* param2; void* param1; int /*<<< orphan*/  async_vcode; int /*<<< orphan*/  async_event; void* statsn; void* max_cmdsn; void* exp_cmdsn; int /*<<< orphan*/  lun; int /*<<< orphan*/  opcode; } ;
struct TYPE_6__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int ISCSI_ASYNC_MSG_HDR_DATA_SEG_LEN_MASK ; 
 scalar_t__ ISCSI_CQE_TYPE_UNSOLICITED ; 
 int QEDI_BDQ_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_async*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qedi_ctx*,int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct qedi_ctx *qedi,
				    union iscsi_cqe *cqe,
				    struct iscsi_task *task,
				    struct qedi_conn *qedi_conn,
				    u16 que_idx)
{
	struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
	struct iscsi_session *session = conn->session;
	struct iscsi_async_msg_hdr *cqe_async_msg;
	struct iscsi_async *resp_hdr;
	u32 lun[2];
	u32 pdu_len, num_bdqs;
	char bdq_data[QEDI_BDQ_BUF_SIZE];
	unsigned long flags;

	FUNC6(&session->back_lock);

	cqe_async_msg = &cqe->cqe_common.iscsi_hdr.async_msg;
	pdu_len = cqe_async_msg->hdr_second_dword &
		ISCSI_ASYNC_MSG_HDR_DATA_SEG_LEN_MASK;
	num_bdqs = pdu_len / QEDI_BDQ_BUF_SIZE;

	if (cqe->cqe_common.cqe_type == ISCSI_CQE_TYPE_UNSOLICITED) {
		FUNC7(&qedi->hba_lock, flags);
		FUNC5(qedi, &cqe->cqe_unsolicited,
					  pdu_len, num_bdqs, bdq_data);
		FUNC9(&qedi->hba_lock, flags);
	}

	resp_hdr = (struct iscsi_async *)&qedi_conn->gen_pdu.resp_hdr;
	FUNC4(resp_hdr, 0, sizeof(struct iscsi_hdr));
	resp_hdr->opcode = cqe_async_msg->opcode;
	resp_hdr->flags = 0x80;

	lun[0] = FUNC2(cqe_async_msg->lun.lo);
	lun[1] = FUNC2(cqe_async_msg->lun.hi);
	FUNC3(&resp_hdr->lun, lun, sizeof(struct scsi_lun));
	resp_hdr->exp_cmdsn = FUNC2(cqe_async_msg->exp_cmd_sn);
	resp_hdr->max_cmdsn = FUNC2(cqe_async_msg->max_cmd_sn);
	resp_hdr->statsn = FUNC2(cqe_async_msg->stat_sn);

	resp_hdr->async_event = cqe_async_msg->async_event;
	resp_hdr->async_vcode = cqe_async_msg->async_vcode;

	resp_hdr->param1 = FUNC1(cqe_async_msg->param1_rsrv);
	resp_hdr->param2 = FUNC1(cqe_async_msg->param2_rsrv);
	resp_hdr->param3 = FUNC1(cqe_async_msg->param3_rsrv);

	FUNC0(conn, (struct iscsi_hdr *)resp_hdr, bdq_data,
			     pdu_len);

	FUNC8(&session->back_lock);
}