#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union qm_mc_result {int verb; scalar_t__ result; } ;
union qm_mc_command {int /*<<< orphan*/  fq; } ;
struct qman_portal {TYPE_1__* config; int /*<<< orphan*/  p; } ;
struct qman_fq {scalar_t__ state; int /*<<< orphan*/  fqid; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QMAN_FQ_FLAG_NO_MODIFY ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_CHANGING ; 
 int /*<<< orphan*/  QM_MCC_VERB_ALTER_SCHED ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_ALTER_SCHED ; 
 int QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 struct qman_portal* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,union qm_mc_result**) ; 
 union qm_mc_command* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ qman_fq_state_parked ; 
 scalar_t__ qman_fq_state_sched ; 

int FUNC9(struct qman_fq *fq)
{
	union qm_mc_command *mcc;
	union qm_mc_result *mcr;
	struct qman_portal *p;
	int ret = 0;

	if (fq->state != qman_fq_state_parked)
		return -EINVAL;
#ifdef CONFIG_FSL_DPAA_CHECKING
	if (fq_isset(fq, QMAN_FQ_FLAG_NO_MODIFY))
		return -EINVAL;
#endif
	/* Issue a ALTERFQ_SCHED management command */
	p = FUNC3();
	if (FUNC2(fq, QMAN_FQ_STATE_CHANGING) ||
	    fq->state != qman_fq_state_parked) {
		ret = -EBUSY;
		goto out;
	}
	mcc = FUNC8(&p->p);
	FUNC5(&mcc->fq, fq->fqid);
	FUNC6(&p->p, QM_MCC_VERB_ALTER_SCHED);
	if (!FUNC7(&p->p, &mcr)) {
		FUNC1(p->config->dev, "ALTER_SCHED timeout\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC0((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_ALTER_SCHED);
	if (mcr->result != QM_MCR_RESULT_OK) {
		ret = -EIO;
		goto out;
	}
	fq->state = qman_fq_state_sched;
out:
	FUNC4();
	return ret;
}