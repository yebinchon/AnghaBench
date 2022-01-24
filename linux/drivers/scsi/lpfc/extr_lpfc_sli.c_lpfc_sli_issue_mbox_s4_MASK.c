#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {int /*<<< orphan*/  mbox_busy; } ;
struct lpfc_sli {int /*<<< orphan*/  sli_flag; TYPE_2__ slistat; } ;
struct TYPE_15__ {int /*<<< orphan*/  intr_enable; } ;
struct lpfc_hba {TYPE_5__* pport; int /*<<< orphan*/  hbalock; TYPE_1__ sli4_hba; struct lpfc_sli sli; } ;
struct TYPE_14__ {int /*<<< orphan*/  mbxCommand; } ;
struct TYPE_18__ {int /*<<< orphan*/  mqe; TYPE_13__ mb; } ;
struct TYPE_20__ {TYPE_4__ u; TYPE_3__* vport; int /*<<< orphan*/  mcqe; } ;
struct TYPE_19__ {int /*<<< orphan*/  port_state; } ;
struct TYPE_17__ {int vpi; } ;
typedef  TYPE_6__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_MBOX ; 
 int LOG_SLI ; 
 int MBX_BUSY ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  MBX_POLL ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,TYPE_13__*) ; 
 int FUNC2 (struct lpfc_hba*,TYPE_6__*) ; 
 int FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,TYPE_6__*) ; 
 int /*<<< orphan*/  lpfc_mcqe_ext_status ; 
 int /*<<< orphan*/  lpfc_mcqe_status ; 
 int /*<<< orphan*/  lpfc_mqe_command ; 
 int /*<<< orphan*/  lpfc_mqe_status ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int FUNC8 (struct lpfc_hba*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq,
		       uint32_t flag)
{
	struct lpfc_sli *psli = &phba->sli;
	unsigned long iflags;
	int rc;

	/* dump from issue mailbox command if setup */
	FUNC1(phba, &mboxq->u.mb);

	rc = FUNC3(phba);
	if (FUNC14(rc)) {
		FUNC5(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
				"(%d):2544 Mailbox command x%x (x%x/x%x) "
				"cannot issue Data: x%x x%x\n",
				mboxq->vport ? mboxq->vport->vpi : 0,
				mboxq->u.mb.mbxCommand,
				FUNC10(phba, mboxq),
				FUNC9(phba, mboxq),
				psli->sli_flag, flag);
		goto out_not_finished;
	}

	/* Detect polling mode and jump to a handler */
	if (!phba->sli4_hba.intr_enable) {
		if (flag == MBX_POLL)
			rc = FUNC8(phba, mboxq);
		else
			rc = -EIO;
		if (rc != MBX_SUCCESS)
			FUNC5(phba, KERN_WARNING, LOG_MBOX | LOG_SLI,
					"(%d):2541 Mailbox command x%x "
					"(x%x/x%x) failure: "
					"mqe_sta: x%x mcqe_sta: x%x/x%x "
					"Data: x%x x%x\n,",
					mboxq->vport ? mboxq->vport->vpi : 0,
					mboxq->u.mb.mbxCommand,
					FUNC10(phba,
									mboxq),
					FUNC9(phba,
									mboxq),
					FUNC0(lpfc_mqe_status, &mboxq->u.mqe),
					FUNC0(lpfc_mcqe_status, &mboxq->mcqe),
					FUNC0(lpfc_mcqe_ext_status,
					       &mboxq->mcqe),
					psli->sli_flag, flag);
		return rc;
	} else if (flag == MBX_POLL) {
		FUNC5(phba, KERN_WARNING, LOG_MBOX | LOG_SLI,
				"(%d):2542 Try to issue mailbox command "
				"x%x (x%x/x%x) synchronously ahead of async "
				"mailbox command queue: x%x x%x\n",
				mboxq->vport ? mboxq->vport->vpi : 0,
				mboxq->u.mb.mbxCommand,
				FUNC10(phba, mboxq),
				FUNC9(phba, mboxq),
				psli->sli_flag, flag);
		/* Try to block the asynchronous mailbox posting */
		rc = FUNC6(phba);
		if (!rc) {
			/* Successfully blocked, now issue sync mbox cmd */
			rc = FUNC8(phba, mboxq);
			if (rc != MBX_SUCCESS)
				FUNC5(phba, KERN_WARNING,
					LOG_MBOX | LOG_SLI,
					"(%d):2597 Sync Mailbox command "
					"x%x (x%x/x%x) failure: "
					"mqe_sta: x%x mcqe_sta: x%x/x%x "
					"Data: x%x x%x\n,",
					mboxq->vport ? mboxq->vport->vpi : 0,
					mboxq->u.mb.mbxCommand,
					FUNC10(phba,
									mboxq),
					FUNC9(phba,
									mboxq),
					FUNC0(lpfc_mqe_status, &mboxq->u.mqe),
					FUNC0(lpfc_mcqe_status, &mboxq->mcqe),
					FUNC0(lpfc_mcqe_ext_status,
					       &mboxq->mcqe),
					psli->sli_flag, flag);
			/* Unblock the async mailbox posting afterward */
			FUNC7(phba);
		}
		return rc;
	}

	/* Now, interrupt mode asynchrous mailbox command */
	rc = FUNC2(phba, mboxq);
	if (rc) {
		FUNC5(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
				"(%d):2543 Mailbox command x%x (x%x/x%x) "
				"cannot issue Data: x%x x%x\n",
				mboxq->vport ? mboxq->vport->vpi : 0,
				mboxq->u.mb.mbxCommand,
				FUNC10(phba, mboxq),
				FUNC9(phba, mboxq),
				psli->sli_flag, flag);
		goto out_not_finished;
	}

	/* Put the mailbox command to the driver internal FIFO */
	psli->slistat.mbox_busy++;
	FUNC12(&phba->hbalock, iflags);
	FUNC4(phba, mboxq);
	FUNC13(&phba->hbalock, iflags);
	FUNC5(phba, KERN_INFO, LOG_MBOX | LOG_SLI,
			"(%d):0354 Mbox cmd issue - Enqueue Data: "
			"x%x (x%x/x%x) x%x x%x x%x\n",
			mboxq->vport ? mboxq->vport->vpi : 0xffffff,
			FUNC0(lpfc_mqe_command, &mboxq->u.mqe),
			FUNC10(phba, mboxq),
			FUNC9(phba, mboxq),
			phba->pport->port_state,
			psli->sli_flag, MBX_NOWAIT);
	/* Wake up worker thread to transport mailbox command from head */
	FUNC11(phba);

	return MBX_BUSY;

out_not_finished:
	return MBX_NOT_FINISHED;
}