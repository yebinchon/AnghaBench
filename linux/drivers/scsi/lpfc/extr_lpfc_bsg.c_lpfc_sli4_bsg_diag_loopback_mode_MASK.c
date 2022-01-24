#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int lnk_no; } ;
struct TYPE_9__ {int conf_trunk; TYPE_3__ lnk_info; } ;
struct lpfc_hba {scalar_t__ link_state; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  link_flag; TYPE_5__* pport; TYPE_4__ sli4_hba; } ;
struct TYPE_6__ {scalar_t__ vendor_cmd; } ;
struct TYPE_7__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct diag_mode_set {int type; int timeout; int physical_link; } ;
struct bsg_job {int request_len; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct TYPE_10__ {int fc_myDID; } ;

/* Variables and functions */
 int DISABLE_LOOP_BACK ; 
 int EINVAL ; 
 int ELNRNG ; 
 int EPERM ; 
 int ETIMEDOUT ; 
#define  EXTERNAL_LOOP_BACK 129 
#define  INTERNAL_LOOP_BACK 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int /*<<< orphan*/  LPFC_DIAG_LOOPBACK_TYPE_DISABLE ; 
 int /*<<< orphan*/  LPFC_DIAG_LOOPBACK_TYPE_EXTERNAL_TRUNKED ; 
 int /*<<< orphan*/  LPFC_DIAG_LOOPBACK_TYPE_INTERNAL ; 
 int /*<<< orphan*/  LPFC_DIAG_LOOPBACK_TYPE_SERDES ; 
 scalar_t__ LPFC_HBA_READY ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 scalar_t__ LPFC_LINK_UP ; 
 int /*<<< orphan*/  LS_LOOPBACK_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,scalar_t__) ; 
 int FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int FUNC5 (struct lpfc_hba*,int) ; 
 int FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct lpfc_hba *phba, struct bsg_job *job)
{
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct diag_mode_set *loopback_mode;
	uint32_t link_flags, timeout, link_no;
	int i, rc = 0;

	/* no data to return just the return code */
	bsg_reply->reply_payload_rcv_len = 0;

	if (job->request_len < sizeof(struct fc_bsg_request) +
	    sizeof(struct diag_mode_set)) {
		FUNC3(phba, KERN_WARNING, LOG_LIBDFC,
				"3011 Received DIAG MODE request size:%d "
				"below the minimum size:%d\n",
				job->request_len,
				(int)(sizeof(struct fc_bsg_request) +
				sizeof(struct diag_mode_set)));
		rc = -EINVAL;
		goto job_done;
	}

	loopback_mode = (struct diag_mode_set *)
		bsg_request->rqst_data.h_vendor.vendor_cmd;
	link_flags = loopback_mode->type;
	timeout = loopback_mode->timeout * 100;

	if (loopback_mode->physical_link == -1)
		link_no = phba->sli4_hba.lnk_info.lnk_no;
	else
		link_no = loopback_mode->physical_link;

	if (link_flags == DISABLE_LOOP_BACK) {
		rc = FUNC6(phba,
					LPFC_DIAG_LOOPBACK_TYPE_DISABLE,
					link_no);
		if (!rc) {
			/* Unset the need disable bit */
			phba->sli4_hba.conf_trunk &= ~((1 << link_no) << 4);
		}
		goto job_done;
	} else {
		/* Check if we need to disable the loopback state */
		if (phba->sli4_hba.conf_trunk & ((1 << link_no) << 4)) {
			rc = -EPERM;
			goto job_done;
		}
	}

	rc = FUNC1(phba);
	if (rc)
		goto job_done;

	/* indicate we are in loobpack diagnostic mode */
	FUNC9(&phba->hbalock);
	phba->link_flag |= LS_LOOPBACK_MODE;
	FUNC10(&phba->hbalock);

	/* reset port to start frome scratch */
	rc = FUNC4(phba);
	if (rc)
		goto job_done;

	/* bring the link to diagnostic mode */
	FUNC3(phba, KERN_INFO, LOG_LIBDFC,
			"3129 Bring link to diagnostic state.\n");

	rc = FUNC5(phba, 1);
	if (rc) {
		FUNC3(phba, KERN_WARNING, LOG_LIBDFC,
				"3130 Failed to bring link to diagnostic "
				"state, rc:x%x\n", rc);
		goto loopback_mode_exit;
	}

	/* wait for link down before proceeding */
	i = 0;
	while (phba->link_state != LPFC_LINK_DOWN) {
		if (i++ > timeout) {
			rc = -ETIMEDOUT;
			FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3131 Timeout waiting for link to "
					"diagnostic mode, timeout:%d ms\n",
					timeout * 10);
			goto loopback_mode_exit;
		}
		FUNC8(10);
	}

	/* set up loopback mode */
	FUNC3(phba, KERN_INFO, LOG_LIBDFC,
			"3132 Set up loopback mode:x%x\n", link_flags);

	switch (link_flags) {
	case INTERNAL_LOOP_BACK:
		if (phba->sli4_hba.conf_trunk & (1 << link_no)) {
			rc = FUNC6(phba,
					LPFC_DIAG_LOOPBACK_TYPE_INTERNAL,
					link_no);
		} else {
			/* Trunk is configured, but link is not in this trunk */
			if (phba->sli4_hba.conf_trunk) {
				rc = -ELNRNG;
				goto loopback_mode_exit;
			}

			rc = FUNC6(phba,
					LPFC_DIAG_LOOPBACK_TYPE_INTERNAL,
					link_no);
		}

		if (!rc) {
			/* Set the need disable bit */
			phba->sli4_hba.conf_trunk |= (1 << link_no) << 4;
		}

		break;
	case EXTERNAL_LOOP_BACK:
		if (phba->sli4_hba.conf_trunk & (1 << link_no)) {
			rc = FUNC6(phba,
				LPFC_DIAG_LOOPBACK_TYPE_EXTERNAL_TRUNKED,
				link_no);
		} else {
			/* Trunk is configured, but link is not in this trunk */
			if (phba->sli4_hba.conf_trunk) {
				rc = -ELNRNG;
				goto loopback_mode_exit;
			}

			rc = FUNC6(phba,
						LPFC_DIAG_LOOPBACK_TYPE_SERDES,
						link_no);
		}

		if (!rc) {
			/* Set the need disable bit */
			phba->sli4_hba.conf_trunk |= (1 << link_no) << 4;
		}

		break;
	default:
		rc = -EINVAL;
		FUNC3(phba, KERN_ERR, LOG_LIBDFC,
				"3141 Loopback mode:x%x not supported\n",
				link_flags);
		goto loopback_mode_exit;
	}

	if (!rc) {
		/* wait for the link attention interrupt */
		FUNC8(100);
		i = 0;
		while (phba->link_state < LPFC_LINK_UP) {
			if (i++ > timeout) {
				rc = -ETIMEDOUT;
				FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3137 Timeout waiting for link up "
					"in loopback mode, timeout:%d ms\n",
					timeout * 10);
				break;
			}
			FUNC8(10);
		}
	}

	/* port resource registration setup for loopback diagnostic */
	if (!rc) {
		/* set up a none zero myDID for loopback test */
		phba->pport->fc_myDID = 1;
		rc = FUNC7(phba);
	} else
		goto loopback_mode_exit;

	if (!rc) {
		/* wait for the port ready */
		FUNC8(100);
		i = 0;
		while (phba->link_state != LPFC_HBA_READY) {
			if (i++ > timeout) {
				rc = -ETIMEDOUT;
				FUNC3(phba, KERN_INFO, LOG_LIBDFC,
					"3133 Timeout waiting for port "
					"loopback mode ready, timeout:%d ms\n",
					timeout * 10);
				break;
			}
			FUNC8(10);
		}
	}

loopback_mode_exit:
	/* clear loopback diagnostic mode */
	if (rc) {
		FUNC9(&phba->hbalock);
		phba->link_flag &= ~LS_LOOPBACK_MODE;
		FUNC10(&phba->hbalock);
	}
	FUNC2(phba);

job_done:
	/* make error code available to userspace */
	bsg_reply->result = rc;
	/* complete the job back to userspace if no error */
	if (rc == 0)
		FUNC0(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
	return rc;
}