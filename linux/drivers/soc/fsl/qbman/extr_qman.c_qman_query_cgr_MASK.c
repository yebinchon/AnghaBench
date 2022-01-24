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
struct qm_mcr_querycgr {int dummy; } ;
union qm_mc_result {int verb; scalar_t__ result; struct qm_mcr_querycgr querycgr; } ;
struct TYPE_3__ {int /*<<< orphan*/  cgid; } ;
union qm_mc_command {TYPE_1__ cgr; } ;
struct qman_portal {TYPE_2__* config; int /*<<< orphan*/  p; } ;
struct qman_cgr {int /*<<< orphan*/  cgrid; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int QM_MCC_VERB_QUERYCGR ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct qman_portal* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,union qm_mc_result**) ; 
 union qm_mc_command* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct qman_cgr *cgr,
			  struct qm_mcr_querycgr *cgrd)
{
	union qm_mc_command *mcc;
	union qm_mc_result *mcr;
	struct qman_portal *p = FUNC2();
	int ret = 0;

	mcc = FUNC7(&p->p);
	mcc->cgr.cgid = cgr->cgrid;
	FUNC5(&p->p, QM_MCC_VERB_QUERYCGR);
	if (!FUNC6(&p->p, &mcr)) {
		ret = -ETIMEDOUT;
		goto out;
	}
	FUNC0((mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_QUERYCGR);
	if (mcr->result == QM_MCR_RESULT_OK)
		*cgrd = mcr->querycgr;
	else {
		FUNC1(p->config->dev, "QUERY_CGR failed: %s\n",
			FUNC3(mcr->result));
		ret = -EIO;
	}
out:
	FUNC4();
	return ret;
}