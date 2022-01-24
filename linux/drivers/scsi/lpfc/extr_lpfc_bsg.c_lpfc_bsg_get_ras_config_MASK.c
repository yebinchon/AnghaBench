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
struct lpfc_ras_fwlog {int ras_active; int /*<<< orphan*/  fw_loglevel; } ;
struct lpfc_hba {int /*<<< orphan*/  cfg_ras_fwlog_buffsize; struct lpfc_ras_fwlog ras_fwlog; } ;
struct lpfc_bsg_ras_req {int dummy; } ;
struct lpfc_bsg_get_ras_config_reply {int /*<<< orphan*/  log_buff_sz; int /*<<< orphan*/  log_level; int /*<<< orphan*/  state; } ;
struct fc_bsg_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ vendor_rsp; } ;
struct TYPE_4__ {TYPE_1__ vendor_reply; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; TYPE_2__ reply_data; } ;
struct bsg_job {int request_len; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int /*<<< orphan*/  LPFC_RASLOG_STATE_RUNNING ; 
 int /*<<< orphan*/  LPFC_RASLOG_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct bsg_job*) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct lpfc_vport* FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC5(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC1(job);
	struct lpfc_vport *vport = FUNC4(shost);
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_bsg_get_ras_config_reply *ras_reply;
	struct lpfc_ras_fwlog *ras_fwlog = &phba->ras_fwlog;
	int rc = 0;

	if (job->request_len <
	    sizeof(struct fc_bsg_request) +
	    sizeof(struct lpfc_bsg_ras_req)) {
		FUNC3(phba, KERN_ERR, LOG_LIBDFC,
				"6192 FW_LOG request received "
				"below minimum size\n");
		rc = -EINVAL;
		goto ras_job_error;
	}

	/* Check FW log status */
	rc = FUNC2(phba);
	if (rc)
		goto ras_job_error;

	ras_reply = (struct lpfc_bsg_get_ras_config_reply *)
		bsg_reply->reply_data.vendor_reply.vendor_rsp;

	/* Current logging state */
	if (ras_fwlog->ras_active == true)
		ras_reply->state = LPFC_RASLOG_STATE_RUNNING;
	else
		ras_reply->state = LPFC_RASLOG_STATE_STOPPED;

	ras_reply->log_level = phba->ras_fwlog.fw_loglevel;
	ras_reply->log_buff_sz = phba->cfg_ras_fwlog_buffsize;

ras_job_error:
	/* make error code available to userspace */
	bsg_reply->result = rc;

	/* complete the job back to userspace */
	if (!rc)
		FUNC0(job, bsg_reply->result,
			     bsg_reply->reply_payload_rcv_len);
	return rc;
}