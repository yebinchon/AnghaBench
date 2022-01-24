#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint ;
struct scsi_qla_host {int dummy; } ;
struct qla_hw_data {TYPE_11__* pdev; } ;
struct link_statistics {int dummy; } ;
struct TYPE_14__ {scalar_t__* vendor_cmd; } ;
struct TYPE_15__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct TYPE_17__ {int /*<<< orphan*/ * vendor_rsp; } ;
struct TYPE_18__ {TYPE_4__ vendor_reply; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; TYPE_5__ reply_data; } ;
struct TYPE_16__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {int reply_len; TYPE_3__ reply_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_19__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_6__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DID_OK ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  EXT_STATUS_MAILBOX ; 
 int /*<<< orphan*/  EXT_STATUS_OK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 scalar_t__ QL_VND_GET_PRIV_STATS_EX ; 
 int /*<<< orphan*/  UNLOADING ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*,int,int) ; 
 struct link_statistics* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct link_statistics*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*) ; 
 struct scsi_qla_host* FUNC6 (TYPE_11__*) ; 
 scalar_t__ ql_dbg_user ; 
 scalar_t__ ql_dbg_verbose ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_6__*,int,struct link_statistics*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC9 (struct scsi_qla_host*,struct link_statistics*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct link_statistics*,int) ; 
 TYPE_6__* FUNC12 (struct Scsi_Host*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct bsg_job *bsg_job)
{
	struct fc_bsg_request *bsg_request = bsg_job->request;
	struct fc_bsg_reply *bsg_reply = bsg_job->reply;
	struct Scsi_Host *host = FUNC4(bsg_job);
	scsi_qla_host_t *vha = FUNC12(host);
	struct qla_hw_data *ha = vha->hw;
	struct scsi_qla_host *base_vha = FUNC6(ha->pdev);
	struct link_statistics *stats = NULL;
	dma_addr_t stats_dma;
	int rval;
	uint32_t *cmd = bsg_request->rqst_data.h_vendor.vendor_cmd;
	uint options = cmd[0] == QL_VND_GET_PRIV_STATS_EX ? cmd[1] : 0;

	if (FUNC13(UNLOADING, &vha->dpc_flags))
		return -ENODEV;

	if (FUNC14(FUNC5(ha->pdev)))
		return -ENODEV;

	if (FUNC10(vha))
		return -EBUSY;

	if (!FUNC0(ha))
		return -EPERM;

	stats = FUNC2(&ha->pdev->dev, sizeof(*stats), &stats_dma,
				   GFP_KERNEL);
	if (!stats) {
		FUNC8(ql_log_warn, vha, 0x70e2,
		    "Failed to allocate memory for stats.\n");
		return -ENOMEM;
	}

	rval = FUNC9(base_vha, stats, stats_dma, options);

	if (rval == QLA_SUCCESS) {
		FUNC7(ql_dbg_user + ql_dbg_verbose, vha, 0x70e5,
			stats, sizeof(*stats));
		FUNC11(bsg_job->reply_payload.sg_list,
			bsg_job->reply_payload.sg_cnt, stats, sizeof(*stats));
	}

	bsg_reply->reply_payload_rcv_len = sizeof(*stats);
	bsg_reply->reply_data.vendor_reply.vendor_rsp[0] =
	    rval ? EXT_STATUS_MAILBOX : EXT_STATUS_OK;

	bsg_job->reply_len = sizeof(*bsg_reply);
	bsg_reply->result = DID_OK << 16;
	FUNC1(bsg_job, bsg_reply->result,
		       bsg_reply->reply_payload_rcv_len);

	FUNC3(&ha->pdev->dev, sizeof(*stats),
		stats, stats_dma);

	return 0;
}