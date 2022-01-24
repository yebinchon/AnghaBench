#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
union qm_mc_result {int verb; scalar_t__ result; } ;
union qm_mc_command {int /*<<< orphan*/  fq; } ;
struct qman_portal {int /*<<< orphan*/  p; } ;
struct qman_fq {scalar_t__ state; int /*<<< orphan*/  fqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QMAN_FQ_FLAG_NO_MODIFY ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_BLOCKOOS ; 
 int /*<<< orphan*/  QM_MCC_VERB_ALTER_OOS ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_ALTER_OOS ; 
 int QM_MCR_VERB_MASK ; 
 scalar_t__ FUNC1 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 struct qman_portal* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,union qm_mc_result**) ; 
 union qm_mc_command* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ qman_fq_state_oos ; 
 scalar_t__ qman_fq_state_retired ; 

int FUNC8(struct qman_fq *fq)
{
	union qm_mc_command *mcc;
	union qm_mc_result *mcr;
	struct qman_portal *p;
	int ret = 0;

	if (fq->state != qman_fq_state_retired)
		return -EINVAL;
#ifdef CONFIG_FSL_DPAA_CHECKING
	if (fq_isset(fq, QMAN_FQ_FLAG_NO_MODIFY))
		return -EINVAL;
#endif
	p = FUNC2();
	if (FUNC1(fq, QMAN_FQ_STATE_BLOCKOOS) ||
	    fq->state != qman_fq_state_retired) {
		ret = -EBUSY;
		goto out;
	}
	mcc = FUNC7(&p->p);
	FUNC4(&mcc->fq, fq->fqid);
	FUNC5(&p->p, QM_MCC_VERB_ALTER_OOS);
	if (!FUNC6(&p->p, &mcr)) {
		ret = -ETIMEDOUT;
		goto out;
	}
	FUNC0((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_ALTER_OOS);
	if (mcr->result != QM_MCR_RESULT_OK) {
		ret = -EIO;
		goto out;
	}
	fq->state = qman_fq_state_oos;
out:
	FUNC3();
	return ret;
}