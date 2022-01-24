#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct menlo_response {int /*<<< orphan*/  xri; } ;
struct TYPE_11__ {unsigned int bdeSize; } ;
struct TYPE_12__ {TYPE_4__ bdl; } ;
struct TYPE_13__ {int* ulpWord; TYPE_5__ genreq64; } ;
struct TYPE_14__ {scalar_t__ ulpStatus; TYPE_6__ un; int /*<<< orphan*/  ulpContext; } ;
struct lpfc_iocbq {TYPE_7__ iocb; struct lpfc_dmabuf* context3; struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context1; } ;
struct lpfc_hba {int /*<<< orphan*/  ct_ev_lock; } ;
struct lpfc_bsg_menlo {struct lpfc_dmabuf* rmp; } ;
struct TYPE_8__ {struct lpfc_bsg_menlo menlo; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; struct bsg_job* set_job; TYPE_1__ context_un; } ;
struct TYPE_9__ {scalar_t__ vendor_rsp; } ;
struct TYPE_10__ {TYPE_2__ vendor_reply; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; TYPE_3__ reply_data; } ;
struct bsg_job_data {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; struct bsg_job* set_job; TYPE_1__ context_un; } ;
struct bsg_job {int /*<<< orphan*/  reply_payload; int /*<<< orphan*/ * dd_data; struct fc_bsg_reply* reply; } ;
typedef  TYPE_7__ IOCB_t ;

/* Variables and functions */
 int EACCES ; 
 int EFAULT ; 
 int ETIMEDOUT ; 
#define  IOERR_INVALID_RPI 129 
 int IOERR_PARAM_MASK ; 
#define  IOERR_SEQUENCE_TIMEOUT 128 
 scalar_t__ IOSTAT_LOCAL_REJECT ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_dmabuf*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba,
			struct lpfc_iocbq *cmdiocbq,
			struct lpfc_iocbq *rspiocbq)
{
	struct bsg_job_data *dd_data;
	struct bsg_job *job;
	struct fc_bsg_reply *bsg_reply;
	IOCB_t *rsp;
	struct lpfc_dmabuf *bmp, *cmp, *rmp;
	struct lpfc_bsg_menlo *menlo;
	unsigned long flags;
	struct menlo_response *menlo_resp;
	unsigned int rsp_size;
	int rc = 0;

	dd_data = cmdiocbq->context1;
	cmp = cmdiocbq->context2;
	bmp = cmdiocbq->context3;
	menlo = &dd_data->context_un.menlo;
	rmp = menlo->rmp;
	rsp = &rspiocbq->iocb;

	/* Determine if job has been aborted */
	FUNC6(&phba->ct_ev_lock, flags);
	job = dd_data->set_job;
	if (job) {
		bsg_reply = job->reply;
		/* Prevent timeout handling from trying to abort job  */
		job->dd_data = NULL;
	}
	FUNC7(&phba->ct_ev_lock, flags);

	/* Copy the job data or set the failing status for the job */

	if (job) {
		/* always return the xri, this would be used in the case
		 * of a menlo download to allow the data to be sent as a
		 * continuation of the exchange.
		 */

		menlo_resp = (struct menlo_response *)
			bsg_reply->reply_data.vendor_reply.vendor_rsp;
		menlo_resp->xri = rsp->ulpContext;
		if (rsp->ulpStatus) {
			if (rsp->ulpStatus == IOSTAT_LOCAL_REJECT) {
				switch (rsp->un.ulpWord[4] & IOERR_PARAM_MASK) {
				case IOERR_SEQUENCE_TIMEOUT:
					rc = -ETIMEDOUT;
					break;
				case IOERR_INVALID_RPI:
					rc = -EFAULT;
					break;
				default:
					rc = -EACCES;
					break;
				}
			} else {
				rc = -EACCES;
			}
		} else {
			rsp_size = rsp->un.genreq64.bdl.bdeSize;
			bsg_reply->reply_payload_rcv_len =
				FUNC2(rmp, &job->reply_payload,
						   rsp_size, 0);
		}

	}

	FUNC5(phba, cmdiocbq);
	FUNC3(phba, cmp);
	FUNC3(phba, rmp);
	FUNC4(phba, bmp->virt, bmp->phys);
	FUNC1(bmp);
	FUNC1(dd_data);

	/* Complete the job if active */

	if (job) {
		bsg_reply->result = rc;
		FUNC0(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	}

	return;
}