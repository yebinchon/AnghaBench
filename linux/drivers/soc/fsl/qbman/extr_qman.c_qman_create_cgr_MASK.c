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
typedef  int u32 ;
struct qman_portal {int /*<<< orphan*/  cgr_lock; int /*<<< orphan*/ * cgrs; TYPE_1__* config; int /*<<< orphan*/  cgr_cbs; } ;
struct qman_cgr {size_t cgrid; int /*<<< orphan*/  (* cb ) (struct qman_portal*,struct qman_cgr*,int) ;int /*<<< orphan*/  node; int /*<<< orphan*/  chan; } ;
struct TYPE_4__ {scalar_t__ cscn_en; int /*<<< orphan*/  cscn_targ; } ;
struct qm_mcr_querycgr {TYPE_2__ cgr; } ;
struct qm_mcc_initcgr {int /*<<< orphan*/  we_mask; int /*<<< orphan*/  cgr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 size_t CGR_NUM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct qman_portal*) ; 
 int QMAN_CGR_FLAG_USE_INIT ; 
 int /*<<< orphan*/  QM_CGR_WE_CSCN_TARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct qman_portal* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qman_cgr*,int,struct qm_mcc_initcgr*) ; 
 int /*<<< orphan*/ * qman_cgr_cpus ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC12 (struct qman_cgr*,struct qm_mcr_querycgr*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct qman_portal*,struct qman_cgr*,int) ; 

int FUNC17(struct qman_cgr *cgr, u32 flags,
		    struct qm_mcc_initcgr *opts)
{
	struct qm_mcr_querycgr cgr_state;
	int ret;
	struct qman_portal *p;

	/*
	 * We have to check that the provided CGRID is within the limits of the
	 * data-structures, for obvious reasons. However we'll let h/w take
	 * care of determining whether it's within the limits of what exists on
	 * the SoC.
	 */
	if (cgr->cgrid >= CGR_NUM)
		return -EINVAL;

	FUNC6();
	p = FUNC4();
	qman_cgr_cpus[cgr->cgrid] = FUNC13();
	FUNC7();

	cgr->chan = p->config->channel;
	FUNC14(&p->cgr_lock);

	if (opts) {
		struct qm_mcc_initcgr local_opts = *opts;

		ret = FUNC12(cgr, &cgr_state);
		if (ret)
			goto out;

		FUNC9(&local_opts.cgr, FUNC0(p),
				     FUNC1(cgr_state.cgr.cscn_targ));
		local_opts.we_mask |= FUNC2(QM_CGR_WE_CSCN_TARG);

		/* send init if flags indicate so */
		if (flags & QMAN_CGR_FLAG_USE_INIT)
			ret = FUNC10(cgr, QMAN_CGR_FLAG_USE_INIT,
					    &local_opts);
		else
			ret = FUNC10(cgr, 0, &local_opts);
		if (ret)
			goto out;
	}

	FUNC5(&cgr->node, &p->cgr_cbs);

	/* Determine if newly added object requires its callback to be called */
	ret = FUNC12(cgr, &cgr_state);
	if (ret) {
		/* we can't go back, so proceed and return success */
		FUNC3(p->config->dev, "CGR HW state partially modified\n");
		ret = 0;
		goto out;
	}
	if (cgr->cb && cgr_state.cgr.cscn_en &&
	    FUNC11(&p->cgrs[1], cgr->cgrid))
		cgr->cb(p, cgr, 1);
out:
	FUNC15(&p->cgr_lock);
	FUNC8();
	return ret;
}