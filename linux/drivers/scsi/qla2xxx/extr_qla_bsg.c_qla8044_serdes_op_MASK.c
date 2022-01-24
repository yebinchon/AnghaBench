#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_serdes_reg_ex {int cmd; int /*<<< orphan*/  val; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {int /*<<< orphan*/ * vendor_rsp; } ;
struct TYPE_8__ {TYPE_3__ vendor_reply; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; TYPE_4__ reply_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {int reply_len; TYPE_2__ reply_payload; TYPE_1__ request_payload; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  sr ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int DID_OK ; 
 int EINVAL ; 
 int /*<<< orphan*/  EXT_STATUS_MAILBOX ; 
#define  INT_SC_SERDES_READ_REG 129 
#define  INT_SC_SERDES_WRITE_REG 128 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,int) ; 
 struct Scsi_Host* FUNC1 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_serdes_reg_ex*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qla_serdes_reg_ex*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qla_serdes_reg_ex*,int) ; 
 int /*<<< orphan*/ * FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC9(struct bsg_job *bsg_job)
{
	struct fc_bsg_reply *bsg_reply = bsg_job->reply;
	struct Scsi_Host *host = FUNC1(bsg_job);
	scsi_qla_host_t *vha = FUNC8(host);
	int rval = 0;
	struct qla_serdes_reg_ex sr;

	FUNC2(&sr, 0, sizeof(sr));

	FUNC7(bsg_job->request_payload.sg_list,
	    bsg_job->request_payload.sg_cnt, &sr, sizeof(sr));

	switch (sr.cmd) {
	case INT_SC_SERDES_WRITE_REG:
		rval = FUNC5(vha, sr.addr, sr.val);
		bsg_reply->reply_payload_rcv_len = 0;
		break;
	case INT_SC_SERDES_READ_REG:
		rval = FUNC4(vha, sr.addr, &sr.val);
		FUNC6(bsg_job->reply_payload.sg_list,
		    bsg_job->reply_payload.sg_cnt, &sr, sizeof(sr));
		bsg_reply->reply_payload_rcv_len = sizeof(sr);
		break;
	default:
		FUNC3(ql_dbg_user, vha, 0x7020,
		    "Unknown serdes cmd %x.\n", sr.cmd);
		rval = -EINVAL;
		break;
	}

	bsg_reply->reply_data.vendor_reply.vendor_rsp[0] =
	    rval ? EXT_STATUS_MAILBOX : 0;

	bsg_job->reply_len = sizeof(struct fc_bsg_reply);
	bsg_reply->result = DID_OK << 16;
	FUNC0(bsg_job, bsg_reply->result,
		       bsg_reply->reply_payload_rcv_len);
	return 0;
}