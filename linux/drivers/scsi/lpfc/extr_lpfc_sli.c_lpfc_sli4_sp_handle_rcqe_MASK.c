#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct lpfc_rcqe {int dummy; } ;
struct lpfc_queue {scalar_t__ queue_id; int /*<<< orphan*/  RQ_no_posted_buf; int /*<<< orphan*/  RQ_buf_posted; int /*<<< orphan*/  RQ_rcv_buf; int /*<<< orphan*/  RQ_no_buf_found; } ;
struct lpfc_nvmet_tgtport {int /*<<< orphan*/  xmt_fcp_release; int /*<<< orphan*/  rcv_fcp_cmd_out; int /*<<< orphan*/  rcv_fcp_cmd_in; } ;
struct TYPE_11__ {int /*<<< orphan*/  sp_queue_event; struct lpfc_queue* dat_rq; struct lpfc_queue* hdr_rq; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; TYPE_6__* targetport; int /*<<< orphan*/  nvmet_support; TYPE_5__ sli4_hba; int /*<<< orphan*/  pport; TYPE_1__* hbqs; } ;
struct TYPE_8__ {int /*<<< orphan*/  rcqe_cmpl; } ;
struct TYPE_10__ {int /*<<< orphan*/  list; TYPE_2__ cqe; } ;
struct TYPE_9__ {scalar_t__ virt; } ;
struct hbq_dmabuf {TYPE_4__ cq_event; TYPE_3__ hbuf; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_r_ctl; } ;
struct TYPE_12__ {struct lpfc_nvmet_tgtport* private; } ;
struct TYPE_7__ {int /*<<< orphan*/  hbq_buffer_list; } ;

/* Variables and functions */
 scalar_t__ CQE_CODE_RECEIVE_V1 ; 
 int /*<<< orphan*/  FC_RCTL_DD_UNSOL_DATA ; 
 int /*<<< orphan*/  FC_RCTL_MDS_DIAGS ; 
#define  FC_STATUS_INSUFF_BUF_FRM_DISC 131 
#define  FC_STATUS_INSUFF_BUF_NEED_BUF 130 
#define  FC_STATUS_RQ_BUF_LEN_EXCEEDED 129 
#define  FC_STATUS_RQ_SUCCESS 128 
 int /*<<< orphan*/  HBA_POST_RECEIVE_BUFFER ; 
 int /*<<< orphan*/  HBA_SP_QUEUE_EVT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_NVME ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct lpfc_rcqe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_cqe_code ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  lpfc_rcqe_rq_id ; 
 int /*<<< orphan*/  lpfc_rcqe_rq_id_v1 ; 
 int /*<<< orphan*/  lpfc_rcqe_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hbq_dmabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_queue*,struct lpfc_queue*) ; 
 struct hbq_dmabuf* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct lpfc_rcqe*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static bool
FUNC11(struct lpfc_hba *phba, struct lpfc_rcqe *rcqe)
{
	bool workposted = false;
	struct fc_frame_header *fc_hdr;
	struct lpfc_queue *hrq = phba->sli4_hba.hdr_rq;
	struct lpfc_queue *drq = phba->sli4_hba.dat_rq;
	struct lpfc_nvmet_tgtport *tgtp;
	struct hbq_dmabuf *dma_buf;
	uint32_t status, rq_id;
	unsigned long iflags;

	/* sanity check on queue memory */
	if (FUNC10(!hrq) || FUNC10(!drq))
		return workposted;

	if (FUNC1(lpfc_cqe_code, rcqe) == CQE_CODE_RECEIVE_V1)
		rq_id = FUNC1(lpfc_rcqe_rq_id_v1, rcqe);
	else
		rq_id = FUNC1(lpfc_rcqe_rq_id, rcqe);
	if (rq_id != hrq->queue_id)
		goto out;

	status = FUNC1(lpfc_rcqe_status, rcqe);
	switch (status) {
	case FC_STATUS_RQ_BUF_LEN_EXCEEDED:
		FUNC3(phba, KERN_ERR, LOG_SLI,
				"2537 Receive Frame Truncated!!\n");
		/* fall through */
	case FC_STATUS_RQ_SUCCESS:
		FUNC8(&phba->hbalock, iflags);
		FUNC5(hrq, drq);
		dma_buf = FUNC6(&phba->hbqs[0].hbq_buffer_list);
		if (!dma_buf) {
			hrq->RQ_no_buf_found++;
			FUNC9(&phba->hbalock, iflags);
			goto out;
		}
		hrq->RQ_rcv_buf++;
		hrq->RQ_buf_posted--;
		FUNC7(&dma_buf->cq_event.cqe.rcqe_cmpl, rcqe, sizeof(*rcqe));

		fc_hdr = (struct fc_frame_header *)dma_buf->hbuf.virt;

		if (fc_hdr->fh_r_ctl == FC_RCTL_MDS_DIAGS ||
		    fc_hdr->fh_r_ctl == FC_RCTL_DD_UNSOL_DATA) {
			FUNC9(&phba->hbalock, iflags);
			/* Handle MDS Loopback frames */
			FUNC4(phba->pport, dma_buf);
			break;
		}

		/* save off the frame for the work thread to process */
		FUNC2(&dma_buf->cq_event.list,
			      &phba->sli4_hba.sp_queue_event);
		/* Frame received */
		phba->hba_flag |= HBA_SP_QUEUE_EVT;
		FUNC9(&phba->hbalock, iflags);
		workposted = true;
		break;
	case FC_STATUS_INSUFF_BUF_FRM_DISC:
		if (phba->nvmet_support) {
			tgtp = phba->targetport->private;
			FUNC3(phba, KERN_ERR, LOG_SLI | LOG_NVME,
					"6402 RQE Error x%x, posted %d err_cnt "
					"%d: %x %x %x\n",
					status, hrq->RQ_buf_posted,
					hrq->RQ_no_posted_buf,
					FUNC0(&tgtp->rcv_fcp_cmd_in),
					FUNC0(&tgtp->rcv_fcp_cmd_out),
					FUNC0(&tgtp->xmt_fcp_release));
		}
		/* fallthrough */

	case FC_STATUS_INSUFF_BUF_NEED_BUF:
		hrq->RQ_no_posted_buf++;
		/* Post more buffers if possible */
		FUNC8(&phba->hbalock, iflags);
		phba->hba_flag |= HBA_POST_RECEIVE_BUFFER;
		FUNC9(&phba->hbalock, iflags);
		workposted = true;
		break;
	}
out:
	return workposted;
}