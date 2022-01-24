#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int hba_flag; } ;
struct get_forced_link_speed_support {int dummy; } ;
struct forced_link_speed_support_reply {int /*<<< orphan*/  supported; } ;
struct fc_bsg_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ vendor_rsp; } ;
struct TYPE_4__ {TYPE_1__ vendor_reply; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; TYPE_2__ reply_data; } ;
struct bsg_job {int request_len; int reply_len; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int HBA_FORCED_LINK_SPEED ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int /*<<< orphan*/  LPFC_FORCED_LINK_SPEED_NOT_SUPPORTED ; 
 int /*<<< orphan*/  LPFC_FORCED_LINK_SPEED_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct lpfc_vport* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC4(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC1(job);
	struct lpfc_vport *vport = FUNC3(shost);
	struct lpfc_hba *phba = vport->phba;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct forced_link_speed_support_reply *forced_reply;
	int rc = 0;

	if (job->request_len <
	    sizeof(struct fc_bsg_request) +
	    sizeof(struct get_forced_link_speed_support)) {
		FUNC2(phba, KERN_WARNING, LOG_LIBDFC,
				"0048 Received FORCED_LINK_SPEED request "
				"below minimum size\n");
		rc = -EINVAL;
		goto job_error;
	}

	forced_reply = (struct forced_link_speed_support_reply *)
		bsg_reply->reply_data.vendor_reply.vendor_rsp;

	if (job->reply_len <
	    sizeof(struct fc_bsg_request) +
	    sizeof(struct forced_link_speed_support_reply)) {
		FUNC2(phba, KERN_WARNING, LOG_LIBDFC,
				"0049 Received FORCED_LINK_SPEED reply below "
				"minimum size\n");
		rc = -EINVAL;
		goto job_error;
	}

	forced_reply->supported = (phba->hba_flag & HBA_FORCED_LINK_SPEED)
				   ? LPFC_FORCED_LINK_SPEED_SUPPORTED
				   : LPFC_FORCED_LINK_SPEED_NOT_SUPPORTED;
job_error:
	bsg_reply->result = rc;
	if (rc == 0)
		FUNC0(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	return rc;
}