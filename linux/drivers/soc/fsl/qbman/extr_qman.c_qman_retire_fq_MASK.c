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
struct TYPE_8__ {int fqs; int /*<<< orphan*/  context_b; } ;
union qm_mr_entry {TYPE_4__ fq; int /*<<< orphan*/  verb; } ;
struct TYPE_6__ {int fqs; } ;
union qm_mc_result {int verb; scalar_t__ result; TYPE_2__ alterfq; } ;
union qm_mc_command {TYPE_4__ fq; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qman_portal {TYPE_1__* config; int /*<<< orphan*/  p; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* fqs ) (struct qman_portal*,struct qman_fq*,union qm_mr_entry*) ;} ;
struct qman_fq {scalar_t__ state; TYPE_3__ cb; int /*<<< orphan*/  fqid; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QMAN_FQ_FLAG_NO_MODIFY ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_CHANGING ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_NE ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_ORL ; 
 int /*<<< orphan*/  QM_MCC_VERB_ALTER_RETIRE ; 
 int QM_MCR_FQS_NOTEMPTY ; 
 int QM_MCR_FQS_ORLPRESENT ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 scalar_t__ QM_MCR_RESULT_PENDING ; 
 int QM_MCR_VERB_ALTER_RETIRE ; 
 int QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  QM_MR_VERB_FQRNI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qman_fq*) ; 
 struct qman_portal* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,union qm_mc_result**) ; 
 union qm_mc_command* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ qman_fq_state_oos ; 
 scalar_t__ qman_fq_state_parked ; 
 scalar_t__ qman_fq_state_retired ; 
 scalar_t__ qman_fq_state_sched ; 
 int /*<<< orphan*/  FUNC12 (struct qman_portal*,struct qman_fq*,union qm_mr_entry*) ; 

int FUNC13(struct qman_fq *fq, u32 *flags)
{
	union qm_mc_command *mcc;
	union qm_mc_result *mcr;
	struct qman_portal *p;
	int ret;
	u8 res;

	if (fq->state != qman_fq_state_parked &&
	    fq->state != qman_fq_state_sched)
		return -EINVAL;
#ifdef CONFIG_FSL_DPAA_CHECKING
	if (fq_isset(fq, QMAN_FQ_FLAG_NO_MODIFY))
		return -EINVAL;
#endif
	p = FUNC6();
	if (FUNC3(fq, QMAN_FQ_STATE_CHANGING) ||
	    fq->state == qman_fq_state_retired ||
	    fq->state == qman_fq_state_oos) {
		ret = -EBUSY;
		goto out;
	}
	mcc = FUNC11(&p->p);
	FUNC8(&mcc->fq, fq->fqid);
	FUNC9(&p->p, QM_MCC_VERB_ALTER_RETIRE);
	if (!FUNC10(&p->p, &mcr)) {
		FUNC2(p->config->dev, "ALTER_RETIRE timeout\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC0((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_ALTER_RETIRE);
	res = mcr->result;
	/*
	 * "Elegant" would be to treat OK/PENDING the same way; set CHANGING,
	 * and defer the flags until FQRNI or FQRN (respectively) show up. But
	 * "Friendly" is to process OK immediately, and not set CHANGING. We do
	 * friendly, otherwise the caller doesn't necessarily have a fully
	 * "retired" FQ on return even if the retirement was immediate. However
	 * this does mean some code duplication between here and
	 * fq_state_change().
	 */
	if (res == QM_MCR_RESULT_OK) {
		ret = 0;
		/* Process 'fq' right away, we'll ignore FQRNI */
		if (mcr->alterfq.fqs & QM_MCR_FQS_NOTEMPTY)
			FUNC4(fq, QMAN_FQ_STATE_NE);
		if (mcr->alterfq.fqs & QM_MCR_FQS_ORLPRESENT)
			FUNC4(fq, QMAN_FQ_STATE_ORL);
		if (flags)
			*flags = fq->flags;
		fq->state = qman_fq_state_retired;
		if (fq->cb.fqs) {
			/*
			 * Another issue with supporting "immediate" retirement
			 * is that we're forced to drop FQRNIs, because by the
			 * time they're seen it may already be "too late" (the
			 * fq may have been OOS'd and free()'d already). But if
			 * the upper layer wants a callback whether it's
			 * immediate or not, we have to fake a "MR" entry to
			 * look like an FQRNI...
			 */
			union qm_mr_entry msg;

			msg.verb = QM_MR_VERB_FQRNI;
			msg.fq.fqs = mcr->alterfq.fqs;
			FUNC8(&msg.fq, fq->fqid);
			msg.fq.context_b = FUNC1(FUNC5(fq));
			fq->cb.fqs(p, fq, &msg);
		}
	} else if (res == QM_MCR_RESULT_PENDING) {
		ret = 1;
		FUNC4(fq, QMAN_FQ_STATE_CHANGING);
	} else {
		ret = -EIO;
	}
out:
	FUNC7();
	return ret;
}