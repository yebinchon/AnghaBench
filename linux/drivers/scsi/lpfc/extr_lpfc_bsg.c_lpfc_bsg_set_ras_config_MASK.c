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
typedef  scalar_t__ uint8_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_ras_fwlog {int ras_active; } ;
struct lpfc_hba {struct lpfc_ras_fwlog ras_fwlog; } ;
struct lpfc_bsg_set_ras_config_req {scalar_t__ action; scalar_t__ log_level; } ;
struct TYPE_3__ {scalar_t__ vendor_cmd; } ;
struct TYPE_4__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; } ;
struct bsg_job {int request_len; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 scalar_t__ LPFC_RASACTION_STOP_LOGGING ; 
 int /*<<< orphan*/  LPFC_RAS_ENABLE_LOGGING ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct bsg_job*) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int FUNC5 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct lpfc_vport* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC7(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC1(job);
	struct lpfc_vport *vport = FUNC6(shost);
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_bsg_set_ras_config_req *ras_req;
	struct fc_bsg_request *bsg_request = job->request;
	struct lpfc_ras_fwlog *ras_fwlog = &phba->ras_fwlog;
	struct fc_bsg_reply *bsg_reply = job->reply;
	uint8_t action = 0, log_level = 0;
	int rc = 0, action_status = 0;

	if (job->request_len <
	    sizeof(struct fc_bsg_request) +
	    sizeof(struct lpfc_bsg_set_ras_config_req)) {
		FUNC3(phba, KERN_ERR, LOG_LIBDFC,
				"6182 Received RAS_LOG request "
				"below minimum size\n");
		rc = -EINVAL;
		goto ras_job_error;
	}

	/* Check FW log status */
	rc = FUNC2(phba);
	if (rc)
		goto ras_job_error;

	ras_req = (struct lpfc_bsg_set_ras_config_req *)
		bsg_request->rqst_data.h_vendor.vendor_cmd;
	action = ras_req->action;
	log_level = ras_req->log_level;

	if (action == LPFC_RASACTION_STOP_LOGGING) {
		/* Check if already disabled */
		if (ras_fwlog->ras_active == false) {
			rc = -ESRCH;
			goto ras_job_error;
		}

		/* Disable logging */
		FUNC4(phba);
	} else {
		/*action = LPFC_RASACTION_START_LOGGING*/

		/* Even though FW-logging is active re-initialize
		 * FW-logging with new log-level. Return status
		 * "Logging already Running" to caller.
		 **/
		if (ras_fwlog->ras_active)
			action_status = -EINPROGRESS;

		/* Enable logging */
		rc = FUNC5(phba, log_level,
					      LPFC_RAS_ENABLE_LOGGING);
		if (rc) {
			rc = -EINVAL;
			goto ras_job_error;
		}

		/* Check if FW-logging is re-initialized */
		if (action_status == -EINPROGRESS)
			rc = action_status;
	}
ras_job_error:
	/* make error code available to userspace */
	bsg_reply->result = rc;

	/* complete the job back to userspace */
	if (!rc)
		FUNC0(job, bsg_reply->result,
			     bsg_reply->reply_payload_rcv_len);

	return rc;
}