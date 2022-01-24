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
typedef  int uint32_t ;
typedef  int u32 ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_6__ {scalar_t__ virt; } ;
struct lpfc_ras_fwlog {TYPE_3__ lwpd; } ;
struct lpfc_hba {struct lpfc_ras_fwlog ras_fwlog; } ;
struct lpfc_bsg_ras_req {int dummy; } ;
struct lpfc_bsg_get_ras_lwpd {void* wrap_count; void* offset; } ;
struct fc_bsg_request {int dummy; } ;
struct TYPE_4__ {scalar_t__ vendor_rsp; } ;
struct TYPE_5__ {TYPE_1__ vendor_reply; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; TYPE_2__ reply_data; } ;
struct bsg_job {int request_len; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct bsg_job*) ; 
 int FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct lpfc_vport* FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC6(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC2(job);
	struct lpfc_vport *vport = FUNC5(shost);
	struct lpfc_bsg_get_ras_lwpd *ras_reply;
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_ras_fwlog *ras_fwlog = &phba->ras_fwlog;
	struct fc_bsg_reply *bsg_reply = job->reply;
	u32 *lwpd_ptr = NULL;
	int rc = 0;

	rc = FUNC3(phba);
	if (rc)
		goto ras_job_error;

	if (job->request_len <
	    sizeof(struct fc_bsg_request) +
	    sizeof(struct lpfc_bsg_ras_req)) {
		FUNC4(phba, KERN_ERR, LOG_LIBDFC,
				"6183 Received RAS_LOG request "
				"below minimum size\n");
		rc = -EINVAL;
		goto ras_job_error;
	}

	ras_reply = (struct lpfc_bsg_get_ras_lwpd *)
		bsg_reply->reply_data.vendor_reply.vendor_rsp;

	if (!ras_fwlog->lwpd.virt) {
		FUNC4(phba, KERN_ERR, LOG_LIBDFC,
				"6193 Restart FW Logging\n");
		rc = -EINVAL;
		goto ras_job_error;
	}

	/* Get lwpd offset */
	lwpd_ptr = (uint32_t *)(ras_fwlog->lwpd.virt);
	ras_reply->offset = FUNC0(*lwpd_ptr & 0xffffffff);

	/* Get wrap count */
	ras_reply->wrap_count = FUNC0(*(++lwpd_ptr) & 0xffffffff);

ras_job_error:
	/* make error code available to userspace */
	bsg_reply->result = rc;

	/* complete the job back to userspace */
	if (!rc)
		FUNC1(job, bsg_reply->result,
			     bsg_reply->reply_payload_rcv_len);

	return rc;
}