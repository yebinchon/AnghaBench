#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {int /*<<< orphan*/  vpi; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_mqe {int dummy; } ;
typedef  struct lpfc_mqe lpfc_mcqe ;
struct TYPE_16__ {int /*<<< orphan*/  mbx_wq; } ;
struct TYPE_15__ {TYPE_7__* mbox_active; int /*<<< orphan*/  sli_flag; int /*<<< orphan*/  mbox_tmo; } ;
struct lpfc_hba {TYPE_5__ sli4_hba; int /*<<< orphan*/  hbalock; TYPE_4__ sli; int /*<<< orphan*/  work_ha; TYPE_3__* pport; int /*<<< orphan*/  last_completion_time; TYPE_6__* mbox; } ;
struct lpfc_dmabuf {int dummy; } ;
struct TYPE_12__ {struct lpfc_mqe mqe; } ;
struct TYPE_18__ {int mbox_flag; struct lpfc_vport* vport; struct lpfc_nodelist* ctx_ndlp; struct lpfc_dmabuf* ctx_buf; scalar_t__ mbox_cmpl; TYPE_1__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/ * varWords; } ;
struct TYPE_17__ {TYPE_2__ un; } ;
struct TYPE_14__ {int /*<<< orphan*/  work_port_lock; int /*<<< orphan*/  work_port_events; } ;
typedef  TYPE_6__ MAILBOX_t ;
typedef  TYPE_7__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  HA_MBATT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_MBOX ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_MBOX_VPORT ; 
 int LPFC_MBX_ERROR_RANGE ; 
 int LPFC_MBX_IMED_UNREG ; 
 int /*<<< orphan*/  LPFC_SLI_MBOX_ACTIVE ; 
 int MBX_BUSY ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 scalar_t__ MBX_SUCCESS ; 
 int MB_CQE_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WORKER_MBOX_TMO ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_7__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct lpfc_mqe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lpfc_mqe*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ lpfc_mbx_cmpl_dflt_rpi ; 
 int /*<<< orphan*/  lpfc_mcqe_status ; 
 int /*<<< orphan*/  lpfc_mqe_status ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,struct lpfc_mqe*,int) ; 
 int FUNC8 (struct lpfc_hba*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_trailer_completed ; 
 int /*<<< orphan*/  lpfc_trailer_consumed ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static bool
FUNC14(struct lpfc_hba *phba, struct lpfc_mcqe *mcqe)
{
	uint32_t mcqe_status;
	MAILBOX_t *mbox, *pmbox;
	struct lpfc_mqe *mqe;
	struct lpfc_vport *vport;
	struct lpfc_nodelist *ndlp;
	struct lpfc_dmabuf *mp;
	unsigned long iflags;
	LPFC_MBOXQ_t *pmb;
	bool workposted = false;
	int rc;

	/* If not a mailbox complete MCQE, out by checking mailbox consume */
	if (!FUNC1(lpfc_trailer_completed, mcqe))
		goto out_no_mqe_complete;

	/* Get the reference to the active mbox command */
	FUNC11(&phba->hbalock, iflags);
	pmb = phba->sli.mbox_active;
	if (FUNC13(!pmb)) {
		FUNC5(phba, KERN_ERR, LOG_MBOX,
				"1832 No pending MBOX command to handle\n");
		FUNC12(&phba->hbalock, iflags);
		goto out_no_mqe_complete;
	}
	FUNC12(&phba->hbalock, iflags);
	mqe = &pmb->u.mqe;
	pmbox = (MAILBOX_t *)&pmb->u.mqe;
	mbox = phba->mbox;
	vport = pmb->vport;

	/* Reset heartbeat timer */
	phba->last_completion_time = jiffies;
	FUNC3(&phba->sli.mbox_tmo);

	/* Move mbox data to caller's mailbox region, do endian swapping */
	if (pmb->mbox_cmpl && mbox)
		FUNC7(mbox, mqe, sizeof(struct lpfc_mqe));

	/*
	 * For mcqe errors, conditionally move a modified error code to
	 * the mbox so that the error will not be missed.
	 */
	mcqe_status = FUNC1(lpfc_mcqe_status, mcqe);
	if (mcqe_status != MB_CQE_STATUS_SUCCESS) {
		if (FUNC1(lpfc_mqe_status, mqe) == MBX_SUCCESS)
			FUNC2(lpfc_mqe_status, mqe,
			       (LPFC_MBX_ERROR_RANGE | mcqe_status));
	}
	if (pmb->mbox_flag & LPFC_MBX_IMED_UNREG) {
		pmb->mbox_flag &= ~LPFC_MBX_IMED_UNREG;
		FUNC4(vport, LPFC_DISC_TRC_MBOX_VPORT,
				      "MBOX dflt rpi: status:x%x rpi:x%x",
				      mcqe_status,
				      pmbox->un.varWords[0], 0);
		if (mcqe_status == MB_CQE_STATUS_SUCCESS) {
			mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
			ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
			/* Reg_LOGIN of dflt RPI was successful. Now lets get
			 * RID of the PPI using the same mbox buffer.
			 */
			FUNC9(phba, vport->vpi,
					 pmbox->un.varWords[0], pmb);
			pmb->mbox_cmpl = lpfc_mbx_cmpl_dflt_rpi;
			pmb->ctx_buf = mp;
			pmb->ctx_ndlp = ndlp;
			pmb->vport = vport;
			rc = FUNC8(phba, pmb, MBX_NOWAIT);
			if (rc != MBX_BUSY)
				FUNC5(phba, KERN_ERR, LOG_MBOX |
						LOG_SLI, "0385 rc should "
						"have been MBX_BUSY\n");
			if (rc != MBX_NOT_FINISHED)
				goto send_current_mbox;
		}
	}
	FUNC11(&phba->pport->work_port_lock, iflags);
	phba->pport->work_port_events &= ~WORKER_MBOX_TMO;
	FUNC12(&phba->pport->work_port_lock, iflags);

	/* There is mailbox completion work to do */
	FUNC11(&phba->hbalock, iflags);
	FUNC0(phba, pmb);
	phba->work_ha |= HA_MBATT;
	FUNC12(&phba->hbalock, iflags);
	workposted = true;

send_current_mbox:
	FUNC11(&phba->hbalock, iflags);
	/* Release the mailbox command posting token */
	phba->sli.sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
	/* Setting active mailbox pointer need to be in sync to flag clear */
	phba->sli.mbox_active = NULL;
	FUNC12(&phba->hbalock, iflags);
	/* Wake up worker thread to post the next pending mailbox command */
	FUNC10(phba);
out_no_mqe_complete:
	if (FUNC1(lpfc_trailer_consumed, mcqe))
		FUNC6(phba->sli4_hba.mbx_wq);
	return workposted;
}