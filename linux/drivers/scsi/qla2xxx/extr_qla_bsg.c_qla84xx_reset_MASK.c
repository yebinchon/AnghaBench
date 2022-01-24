#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_8__ {scalar_t__* vendor_cmd; } ;
struct TYPE_9__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int /*<<< orphan*/  reply_payload_rcv_len; int /*<<< orphan*/  result; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ A84_ISSUE_RESET_DIAG_FW ; 
 int DID_ERROR ; 
 int /*<<< orphan*/  DID_OK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC5 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC7(struct bsg_job *bsg_job)
{
	struct fc_bsg_request *bsg_request = bsg_job->request;
	struct Scsi_Host *host = FUNC2(bsg_job);
	struct fc_bsg_reply *bsg_reply = bsg_job->reply;
	scsi_qla_host_t *vha = FUNC6(host);
	struct qla_hw_data *ha = vha->hw;
	int rval = 0;
	uint32_t flag;

	if (!FUNC0(ha)) {
		FUNC3(ql_dbg_user, vha, 0x702f, "Not 84xx, exiting.\n");
		return -EINVAL;
	}

	flag = bsg_request->rqst_data.h_vendor.vendor_cmd[1];

	rval = FUNC5(vha, flag == A84_ISSUE_RESET_DIAG_FW);

	if (rval) {
		FUNC4(ql_log_warn, vha, 0x7030,
		    "Vendor request 84xx reset failed.\n");
		rval = (DID_ERROR << 16);

	} else {
		FUNC3(ql_dbg_user, vha, 0x7031,
		    "Vendor request 84xx reset completed.\n");
		bsg_reply->result = DID_OK;
		FUNC1(bsg_job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	}

	return rval;
}