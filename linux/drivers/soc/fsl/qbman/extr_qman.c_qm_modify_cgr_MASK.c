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
struct qm_mcc_initcgr {int /*<<< orphan*/  cgid; } ;
union qm_mc_command {struct qm_mcc_initcgr initcgr; } ;
typedef  int u8 ;
typedef  int u32 ;
struct qman_portal {int /*<<< orphan*/  p; } ;
struct qman_cgr {int /*<<< orphan*/  cgrid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int QMAN_CGR_FLAG_USE_INIT ; 
 int QM_MCC_VERB_INITCGR ; 
 int QM_MCC_VERB_MODIFYCGR ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_MASK ; 
 struct qman_portal* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,union qm_mc_result**) ; 
 union qm_mc_command* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qman_cgr *cgr, u32 flags,
			 struct qm_mcc_initcgr *opts)
{
	union qm_mc_command *mcc;
	union qm_mc_result *mcr;
	struct qman_portal *p = FUNC1();
	u8 verb = QM_MCC_VERB_MODIFYCGR;
	int ret = 0;

	mcc = FUNC5(&p->p);
	if (opts)
		mcc->initcgr = *opts;
	mcc->initcgr.cgid = cgr->cgrid;
	if (flags & QMAN_CGR_FLAG_USE_INIT)
		verb = QM_MCC_VERB_INITCGR;
	FUNC3(&p->p, verb);
	if (!FUNC4(&p->p, &mcr)) {
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC0((mcr->verb & QM_MCR_VERB_MASK) == verb);
	if (mcr->result != QM_MCR_RESULT_OK)
		ret = -EIO;

out:
	FUNC2();
	return ret;
}