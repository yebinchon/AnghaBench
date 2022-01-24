#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_5__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ link_state; TYPE_4__* pport; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  link_flag; TYPE_1__ sli4_hba; } ;
struct TYPE_6__ {scalar_t__ vendor_cmd; } ;
struct TYPE_7__ {TYPE_2__ h_vendor; } ;
struct fc_bsg_request {TYPE_3__ rqst_data; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; } ;
struct diag_mode_set {int timeout; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_8__ {scalar_t__ fc_myDID; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  LS_LOOPBACK_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct lpfc_vport* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct bsg_job *job)
{
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct Scsi_Host *shost;
	struct lpfc_vport *vport;
	struct lpfc_hba *phba;
	struct diag_mode_set *loopback_mode_end_cmd;
	uint32_t timeout;
	int rc, i;

	shost = FUNC2(job);
	if (!shost)
		return -ENODEV;
	vport = FUNC7(shost);
	if (!vport)
		return -ENODEV;
	phba = vport->phba;
	if (!phba)
		return -ENODEV;

	if (phba->sli_rev < LPFC_SLI_REV4)
		return -ENODEV;
	if (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
	    LPFC_SLI_INTF_IF_TYPE_2)
		return -ENODEV;

	/* clear loopback diagnostic mode */
	FUNC8(&phba->hbalock);
	phba->link_flag &= ~LS_LOOPBACK_MODE;
	FUNC9(&phba->hbalock);
	loopback_mode_end_cmd = (struct diag_mode_set *)
			bsg_request->rqst_data.h_vendor.vendor_cmd;
	timeout = loopback_mode_end_cmd->timeout * 100;

	rc = FUNC5(phba, 0);
	if (rc) {
		FUNC3(phba, KERN_WARNING, LOG_LIBDFC,
				"3139 Failed to bring link to diagnostic "
				"state, rc:x%x\n", rc);
		goto loopback_mode_end_exit;
	}

	/* wait for link down before proceeding */
	i = 0;
	while (phba->link_state != LPFC_LINK_DOWN) {
		if (i++ > timeout) {
			FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3140 Timeout waiting for link to "
					"diagnostic mode_end, timeout:%d ms\n",
					timeout * 10);
			/* there is nothing much we can do here */
			break;
		}
		FUNC6(10);
	}

	/* reset port resource registrations */
	rc = FUNC4(phba);
	phba->pport->fc_myDID = 0;

loopback_mode_end_exit:
	/* make return code available to userspace */
	bsg_reply->result = rc;
	/* complete the job back to userspace if no error */
	if (rc == 0)
		FUNC1(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	return rc;
}