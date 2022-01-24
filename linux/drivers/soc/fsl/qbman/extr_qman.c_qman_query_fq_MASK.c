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
struct qm_fqd {int dummy; } ;
struct TYPE_2__ {struct qm_fqd fqd; } ;
union qm_mc_result {int verb; scalar_t__ result; TYPE_1__ queryfq; } ;
union qm_mc_command {int /*<<< orphan*/  fq; } ;
struct qman_portal {int /*<<< orphan*/  p; } ;
struct qman_fq {int /*<<< orphan*/  fqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QM_MCC_VERB_QUERYFQ ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_MASK ; 
 int QM_MCR_VERB_QUERYFQ ; 
 struct qman_portal* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,union qm_mc_result**) ; 
 union qm_mc_command* FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct qman_fq *fq, struct qm_fqd *fqd)
{
	union qm_mc_command *mcc;
	union qm_mc_result *mcr;
	struct qman_portal *p = FUNC1();
	int ret = 0;

	mcc = FUNC6(&p->p);
	FUNC3(&mcc->fq, fq->fqid);
	FUNC4(&p->p, QM_MCC_VERB_QUERYFQ);
	if (!FUNC5(&p->p, &mcr)) {
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC0((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_QUERYFQ);
	if (mcr->result == QM_MCR_RESULT_OK)
		*fqd = mcr->queryfq.fqd;
	else
		ret = -EIO;
out:
	FUNC2();
	return ret;
}