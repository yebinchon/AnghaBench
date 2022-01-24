#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_13__ ;
typedef  struct TYPE_21__   TYPE_12__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_28__ {int hbd_count; int /*<<< orphan*/ * hbd; } ;
struct TYPE_27__ {TYPE_4__* mse; int /*<<< orphan*/  sli_config_hdr; } ;
struct TYPE_29__ {TYPE_6__ sli_config_emb1_subsys; TYPE_5__ sli_config_emb0_subsys; } ;
struct lpfc_sli_config_mbox {TYPE_7__ un; } ;
struct TYPE_20__ {int nembType; int numBuf; int /*<<< orphan*/  state; struct lpfc_dmabuf* mbx_dmabuf; int /*<<< orphan*/  seqNum; int /*<<< orphan*/  mbxTag; int /*<<< orphan*/  mboxType; } ;
struct TYPE_25__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; TYPE_11__ mbox_ext_buf_ctx; int /*<<< orphan*/  pport; TYPE_3__ sli4_hba; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_23__ {scalar_t__ vendor_cmd; } ;
struct TYPE_24__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int /*<<< orphan*/  reply_payload_rcv_len; scalar_t__ result; } ;
struct dfc_mbox_req {int /*<<< orphan*/  extSeqNum; int /*<<< orphan*/  extMboxTag; } ;
struct TYPE_31__ {TYPE_12__* mb; TYPE_13__* pmboxq; } ;
struct TYPE_19__ {TYPE_9__ mbox; } ;
struct bsg_job_data {TYPE_10__ context_un; struct bsg_job* set_job; int /*<<< orphan*/  type; } ;
struct bsg_job {struct bsg_job_data* dd_data; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
typedef  enum nemb_type { ____Placeholder_nemb_type } nemb_type ;
struct TYPE_21__ {int /*<<< orphan*/  mbxOwner; } ;
struct TYPE_30__ {TYPE_12__ mb; } ;
struct TYPE_26__ {int /*<<< orphan*/  buf_len; } ;
struct TYPE_22__ {struct bsg_job_data* ctx_buf; int /*<<< orphan*/  mbox_cmpl; int /*<<< orphan*/  vport; TYPE_8__ u; } ;
typedef  TYPE_12__ MAILBOX_t ;
typedef  TYPE_13__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int EPIPE ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int /*<<< orphan*/  LPFC_BSG_MBOX_PORT ; 
 int LPFC_MBX_SLI_CONFIG_MAX_HBD ; 
 int LPFC_MBX_SLI_CONFIG_MAX_MSE ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  OWN_HOST ; 
 int SLI_CONFIG_HANDLED ; 
 int SLI_CONFIG_NOT_HANDLED ; 
 int /*<<< orphan*/  TYPE_MBOX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bsg_job*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_mbox ; 
 int /*<<< orphan*/  FUNC3 (struct bsg_job_data*) ; 
 struct bsg_job_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_bsg_issue_write_mbox_ext_cmpl ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int,int /*<<< orphan*/ ,struct lpfc_dmabuf*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_dmabuf*,int) ; 
 int /*<<< orphan*/  lpfc_mbox_hdr_mse_cnt ; 
 int /*<<< orphan*/  lpfc_mbox_sli_config_ecmn_hbd_len ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int FUNC8 (struct lpfc_hba*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbox_wr ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*,int /*<<< orphan*/ *,int) ; 
 TYPE_13__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_13__*,int /*<<< orphan*/ ,int) ; 
 int nemb_mse ; 
 int /*<<< orphan*/  sta_pos_addr ; 
 int /*<<< orphan*/  sta_pre_addr ; 

__attribute__((used)) static int
FUNC13(struct lpfc_hba *phba, struct bsg_job *job,
			       enum nemb_type nemb_tp,
			       struct lpfc_dmabuf *dmabuf)
{
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct dfc_mbox_req *mbox_req;
	struct lpfc_sli_config_mbox *sli_cfg_mbx;
	uint32_t ext_buf_cnt;
	struct bsg_job_data *dd_data = NULL;
	LPFC_MBOXQ_t *pmboxq = NULL;
	MAILBOX_t *pmb;
	uint8_t *mbx;
	int rc = SLI_CONFIG_NOT_HANDLED, i;

	mbox_req =
	   (struct dfc_mbox_req *)bsg_request->rqst_data.h_vendor.vendor_cmd;

	/* pointer to the start of mailbox command */
	sli_cfg_mbx = (struct lpfc_sli_config_mbox *)dmabuf->virt;

	if (nemb_tp == nemb_mse) {
		ext_buf_cnt = FUNC1(lpfc_mbox_hdr_mse_cnt,
			&sli_cfg_mbx->un.sli_config_emb0_subsys.sli_config_hdr);
		if (ext_buf_cnt > LPFC_MBX_SLI_CONFIG_MAX_MSE) {
			FUNC7(phba, KERN_ERR, LOG_LIBDFC,
					"2953 Failed SLI_CONFIG(mse) wr, "
					"ext_buf_cnt(%d) out of range(%d)\n",
					ext_buf_cnt,
					LPFC_MBX_SLI_CONFIG_MAX_MSE);
			return -ERANGE;
		}
		FUNC7(phba, KERN_INFO, LOG_LIBDFC,
				"2949 Handled SLI_CONFIG(mse) wr, "
				"ext_buf_cnt:%d\n", ext_buf_cnt);
	} else {
		/* sanity check on interface type for support */
		if (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
		    LPFC_SLI_INTF_IF_TYPE_2)
			return -ENODEV;
		/* nemb_tp == nemb_hbd */
		ext_buf_cnt = sli_cfg_mbx->un.sli_config_emb1_subsys.hbd_count;
		if (ext_buf_cnt > LPFC_MBX_SLI_CONFIG_MAX_HBD) {
			FUNC7(phba, KERN_ERR, LOG_LIBDFC,
					"2954 Failed SLI_CONFIG(hbd) wr, "
					"ext_buf_cnt(%d) out of range(%d)\n",
					ext_buf_cnt,
					LPFC_MBX_SLI_CONFIG_MAX_HBD);
			return -ERANGE;
		}
		FUNC7(phba, KERN_INFO, LOG_LIBDFC,
				"2950 Handled SLI_CONFIG(hbd) wr, "
				"ext_buf_cnt:%d\n", ext_buf_cnt);
	}

	/* before dma buffer descriptor setup */
	FUNC6(phba, nemb_tp, mbox_wr, dma_mbox,
					sta_pre_addr, dmabuf, ext_buf_cnt);

	if (ext_buf_cnt == 0)
		return -EPERM;

	/* for the first external buffer */
	FUNC5(phba, nemb_tp, 0, dmabuf, dmabuf);

	/* after dma descriptor setup */
	FUNC6(phba, nemb_tp, mbox_wr, dma_mbox,
					sta_pos_addr, dmabuf, ext_buf_cnt);

	/* log for looking forward */
	for (i = 1; i < ext_buf_cnt; i++) {
		if (nemb_tp == nemb_mse)
			FUNC7(phba, KERN_INFO, LOG_LIBDFC,
				"2951 SLI_CONFIG(mse), buf[%d]-length:%d\n",
				i, sli_cfg_mbx->un.sli_config_emb0_subsys.
				mse[i].buf_len);
		else
			FUNC7(phba, KERN_INFO, LOG_LIBDFC,
				"2952 SLI_CONFIG(hbd), buf[%d]-length:%d\n",
				i, FUNC1(lpfc_mbox_sli_config_ecmn_hbd_len,
				&sli_cfg_mbx->un.sli_config_emb1_subsys.
				hbd[i]));
	}

	/* multi-buffer handling context */
	phba->mbox_ext_buf_ctx.nembType = nemb_tp;
	phba->mbox_ext_buf_ctx.mboxType = mbox_wr;
	phba->mbox_ext_buf_ctx.numBuf = ext_buf_cnt;
	phba->mbox_ext_buf_ctx.mbxTag = mbox_req->extMboxTag;
	phba->mbox_ext_buf_ctx.seqNum = mbox_req->extSeqNum;
	phba->mbox_ext_buf_ctx.mbx_dmabuf = dmabuf;

	if (ext_buf_cnt == 1) {
		/* bsg tracking structure */
		dd_data = FUNC4(sizeof(struct bsg_job_data), GFP_KERNEL);
		if (!dd_data) {
			rc = -ENOMEM;
			goto job_error;
		}

		/* mailbox command structure for base driver */
		pmboxq = FUNC10(phba->mbox_mem_pool, GFP_KERNEL);
		if (!pmboxq) {
			rc = -ENOMEM;
			goto job_error;
		}
		FUNC12(pmboxq, 0, sizeof(LPFC_MBOXQ_t));
		pmb = &pmboxq->u.mb;
		mbx = (uint8_t *)dmabuf->virt;
		FUNC9(pmb, mbx, sizeof(*pmb));
		pmb->mbxOwner = OWN_HOST;
		pmboxq->vport = phba->pport;

		/* callback for multi-buffer read mailbox command */
		pmboxq->mbox_cmpl = lpfc_bsg_issue_write_mbox_ext_cmpl;

		/* context fields to callback function */
		pmboxq->ctx_buf = dd_data;
		dd_data->type = TYPE_MBOX;
		dd_data->set_job = job;
		dd_data->context_un.mbox.pmboxq = pmboxq;
		dd_data->context_un.mbox.mb = (MAILBOX_t *)mbx;
		job->dd_data = dd_data;

		/* state change */

		phba->mbox_ext_buf_ctx.state = LPFC_BSG_MBOX_PORT;
		rc = FUNC8(phba, pmboxq, MBX_NOWAIT);
		if ((rc == MBX_SUCCESS) || (rc == MBX_BUSY)) {
			FUNC7(phba, KERN_INFO, LOG_LIBDFC,
					"2955 Issued SLI_CONFIG ext-buffer "
					"mailbox command, rc:x%x\n", rc);
			return SLI_CONFIG_HANDLED;
		}
		FUNC7(phba, KERN_ERR, LOG_LIBDFC,
				"2956 Failed to issue SLI_CONFIG ext-buffer "
				"mailbox command, rc:x%x\n", rc);
		rc = -EPIPE;
		goto job_error;
	}

	/* wait for additoinal external buffers */

	bsg_reply->result = 0;
	FUNC2(job, bsg_reply->result,
		       bsg_reply->reply_payload_rcv_len);
	return SLI_CONFIG_HANDLED;

job_error:
	if (pmboxq)
		FUNC11(pmboxq, phba->mbox_mem_pool);
	FUNC3(dd_data);

	return rc;
}