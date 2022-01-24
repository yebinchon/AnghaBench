#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_20__ {int fcp_prio_enabled; } ;
struct qla_hw_data {TYPE_5__ flags; TYPE_7__* fcp_prio_cfg; } ;
struct qla_fcp_prio_cfg {int dummy; } ;
struct TYPE_16__ {int* vendor_cmd; } ;
struct TYPE_17__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; } ;
struct TYPE_19__ {int payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct TYPE_18__ {int payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {TYPE_4__ request_payload; TYPE_3__ reply_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_21__ {struct qla_hw_data* hw; } ;
typedef  TYPE_6__ scsi_qla_host_t ;
struct TYPE_22__ {int attributes; } ;

/* Variables and functions */
 int DID_ERROR ; 
 void* DID_OK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FCP_PRIO_ATTR_ENABLE ; 
 int FCP_PRIO_CFG_SIZE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
#define  QLFC_FCP_PRIO_DISABLE 131 
#define  QLFC_FCP_PRIO_ENABLE 130 
#define  QLFC_FCP_PRIO_GET_CONFIG 129 
#define  QLFC_FCP_PRIO_SET_CONFIG 128 
 int /*<<< orphan*/  FUNC3 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,struct qla_fcp_prio_cfg*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 TYPE_6__* FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 TYPE_7__* FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct bsg_job *bsg_job)
{
	struct Scsi_Host *host = FUNC4(bsg_job);
	struct fc_bsg_request *bsg_request = bsg_job->request;
	struct fc_bsg_reply *bsg_reply = bsg_job->reply;
	scsi_qla_host_t *vha = FUNC11(host);
	struct qla_hw_data *ha = vha->hw;
	int ret = 0;
	uint32_t len;
	uint32_t oper;

	if (!(FUNC1(ha) || FUNC2(ha) || FUNC0(ha))) {
		ret = -EINVAL;
		goto exit_fcp_prio_cfg;
	}

	/* Get the sub command */
	oper = bsg_request->rqst_data.h_vendor.vendor_cmd[1];

	/* Only set config is allowed if config memory is not allocated */
	if (!ha->fcp_prio_cfg && (oper != QLFC_FCP_PRIO_SET_CONFIG)) {
		ret = -EINVAL;
		goto exit_fcp_prio_cfg;
	}
	switch (oper) {
	case QLFC_FCP_PRIO_DISABLE:
		if (ha->flags.fcp_prio_enabled) {
			ha->flags.fcp_prio_enabled = 0;
			ha->fcp_prio_cfg->attributes &=
				~FCP_PRIO_ATTR_ENABLE;
			FUNC8(vha);
			bsg_reply->result = DID_OK;
		} else {
			ret = -EINVAL;
			bsg_reply->result = (DID_ERROR << 16);
			goto exit_fcp_prio_cfg;
		}
		break;

	case QLFC_FCP_PRIO_ENABLE:
		if (!ha->flags.fcp_prio_enabled) {
			if (ha->fcp_prio_cfg) {
				ha->flags.fcp_prio_enabled = 1;
				ha->fcp_prio_cfg->attributes |=
				    FCP_PRIO_ATTR_ENABLE;
				FUNC8(vha);
				bsg_reply->result = DID_OK;
			} else {
				ret = -EINVAL;
				bsg_reply->result = (DID_ERROR << 16);
				goto exit_fcp_prio_cfg;
			}
		}
		break;

	case QLFC_FCP_PRIO_GET_CONFIG:
		len = bsg_job->reply_payload.payload_len;
		if (!len || len > FCP_PRIO_CFG_SIZE) {
			ret = -EINVAL;
			bsg_reply->result = (DID_ERROR << 16);
			goto exit_fcp_prio_cfg;
		}

		bsg_reply->result = DID_OK;
		bsg_reply->reply_payload_rcv_len =
			FUNC9(
			bsg_job->reply_payload.sg_list,
			bsg_job->reply_payload.sg_cnt, ha->fcp_prio_cfg,
			len);

		break;

	case QLFC_FCP_PRIO_SET_CONFIG:
		len = bsg_job->request_payload.payload_len;
		if (!len || len > FCP_PRIO_CFG_SIZE) {
			bsg_reply->result = (DID_ERROR << 16);
			ret = -EINVAL;
			goto exit_fcp_prio_cfg;
		}

		if (!ha->fcp_prio_cfg) {
			ha->fcp_prio_cfg = FUNC13(FCP_PRIO_CFG_SIZE);
			if (!ha->fcp_prio_cfg) {
				FUNC6(ql_log_warn, vha, 0x7050,
				    "Unable to allocate memory for fcp prio "
				    "config data (%x).\n", FCP_PRIO_CFG_SIZE);
				bsg_reply->result = (DID_ERROR << 16);
				ret = -ENOMEM;
				goto exit_fcp_prio_cfg;
			}
		}

		FUNC5(ha->fcp_prio_cfg, 0, FCP_PRIO_CFG_SIZE);
		FUNC10(bsg_job->request_payload.sg_list,
		bsg_job->request_payload.sg_cnt, ha->fcp_prio_cfg,
			FCP_PRIO_CFG_SIZE);

		/* validate fcp priority data */

		if (!FUNC7(vha,
		    (struct qla_fcp_prio_cfg *) ha->fcp_prio_cfg, 1)) {
			bsg_reply->result = (DID_ERROR << 16);
			ret = -EINVAL;
			/* If buffer was invalidatic int
			 * fcp_prio_cfg is of no use
			 */
			FUNC12(ha->fcp_prio_cfg);
			ha->fcp_prio_cfg = NULL;
			goto exit_fcp_prio_cfg;
		}

		ha->flags.fcp_prio_enabled = 0;
		if (ha->fcp_prio_cfg->attributes & FCP_PRIO_ATTR_ENABLE)
			ha->flags.fcp_prio_enabled = 1;
		FUNC8(vha);
		bsg_reply->result = DID_OK;
		break;
	default:
		ret = -EINVAL;
		break;
	}
exit_fcp_prio_cfg:
	if (!ret)
		FUNC3(bsg_job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	return ret;
}