#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  ct_ev_lock; } ;
struct fc_bsg_reply {int /*<<< orphan*/  reply_payload_rcv_len; scalar_t__ result; } ;
struct TYPE_9__ {int /*<<< orphan*/  dmabuffers; int /*<<< orphan*/  pmboxq; scalar_t__ mb; } ;
struct TYPE_10__ {TYPE_3__ mbox; } ;
struct bsg_job_data {TYPE_4__ context_un; struct bsg_job* set_job; } ;
struct TYPE_8__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  payload_len; } ;
struct bsg_job {TYPE_2__ reply_payload; struct fc_bsg_reply* reply; int /*<<< orphan*/ * dd_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  mb; } ;
struct TYPE_11__ {TYPE_1__ u; struct bsg_job_data* ctx_ndlp; } ;
typedef  int /*<<< orphan*/  MAILBOX_t ;
typedef  TYPE_5__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
	struct bsg_job_data *dd_data;
	struct fc_bsg_reply *bsg_reply;
	struct bsg_job *job;
	uint32_t size;
	unsigned long flags;
	uint8_t *pmb, *pmb_buf;

	dd_data = pmboxq->ctx_ndlp;

	/*
	 * The outgoing buffer is readily referred from the dma buffer,
	 * just need to get header part from mailboxq structure.
	 */
	pmb = (uint8_t *)&pmboxq->u.mb;
	pmb_buf = (uint8_t *)dd_data->context_un.mbox.mb;
	FUNC3(pmb_buf, pmb, sizeof(MAILBOX_t));

	/* Determine if job has been aborted */

	FUNC6(&phba->ct_ev_lock, flags);
	job = dd_data->set_job;
	if (job) {
		/* Prevent timeout handling from trying to abort job  */
		job->dd_data = NULL;
	}
	FUNC7(&phba->ct_ev_lock, flags);

	/* Copy the mailbox data to the job if it is still active */

	if (job) {
		bsg_reply = job->reply;
		size = job->reply_payload.payload_len;
		bsg_reply->reply_payload_rcv_len =
			FUNC5(job->reply_payload.sg_list,
					    job->reply_payload.sg_cnt,
					    pmb_buf, size);
	}

	dd_data->set_job = NULL;
	FUNC4(dd_data->context_un.mbox.pmboxq, phba->mbox_mem_pool);
	FUNC2(phba, dd_data->context_un.mbox.dmabuffers);
	FUNC1(dd_data);

	/* Complete the job if the job is still active */

	if (job) {
		bsg_reply->result = 0;
		FUNC0(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	}
	return;
}