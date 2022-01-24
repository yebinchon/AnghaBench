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
struct qedf_ctx {int /*<<< orphan*/  flogi_compl; int /*<<< orphan*/  flogi_failed; int /*<<< orphan*/  dbg_ctx; } ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {struct fc_lport* lp; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 scalar_t__ ELS_LS_RJT ; 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDF_LOG_ELS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_seq*,struct fc_frame*,struct fc_lport*) ; 
 struct fc_exch* FUNC6 (struct fc_seq*) ; 
 struct qedf_ctx* FUNC7 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC8 (struct qedf_ctx*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC9(struct fc_seq *seq, struct fc_frame *fp,
	void *arg)
{
	struct fc_exch *exch = FUNC6(seq);
	struct fc_lport *lport = exch->lp;
	struct qedf_ctx *qedf = FUNC7(lport);

	if (!qedf) {
		FUNC1(NULL, "qedf is NULL.\n");
		return;
	}

	/*
	 * If ERR_PTR is set then don't try to stat anything as it will cause
	 * a crash when we access fp.
	 */
	if (FUNC0(fp)) {
		FUNC2(&(qedf->dbg_ctx), QEDF_LOG_ELS,
		    "fp has IS_ERR() set.\n");
		goto skip_stat;
	}

	/* Log stats for FLOGI reject */
	if (FUNC4(fp) == ELS_LS_RJT)
		qedf->flogi_failed++;
	else if (FUNC4(fp) == ELS_LS_ACC) {
		/* Set the source MAC we will use for FCoE traffic */
		FUNC8(qedf, fp);
	}

	/* Complete flogi_compl so we can proceed to sending ADISCs */
	FUNC3(&qedf->flogi_compl);

skip_stat:
	/* Report response to libfc */
	FUNC5(seq, fp, lport);
}