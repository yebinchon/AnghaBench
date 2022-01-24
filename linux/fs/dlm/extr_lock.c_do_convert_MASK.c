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
struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int lkb_exflags; } ;

/* Variables and functions */
 int DLM_LKF_NODLCKWT ; 
 int /*<<< orphan*/  DLM_LKSTS_CONVERT ; 
 int /*<<< orphan*/  DLM_LOCK_IV ; 
 int EAGAIN ; 
 int EDEADLK ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct dlm_rsb*,struct dlm_lkb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lkb*) ; 
 scalar_t__ FUNC3 (struct dlm_rsb*,struct dlm_lkb*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_rsb*,struct dlm_lkb*) ; 

__attribute__((used)) static int FUNC11(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int error = 0;
	int deadlk = 0;

	/* changing an existing lock may allow others to be granted */

	if (FUNC3(r, lkb, 1, 0, &deadlk)) {
		FUNC6(r, lkb);
		FUNC9(r, lkb, 0);
		goto out;
	}

	/* can_be_granted() detected that this lock would block in a conversion
	   deadlock, so we leave it on the granted queue and return EDEADLK in
	   the ast for the convert. */

	if (deadlk && !(lkb->lkb_exflags & DLM_LKF_NODLCKWT)) {
		/* it's left on the granted queue */
		FUNC10(r, lkb);
		FUNC9(r, lkb, -EDEADLK);
		error = -EDEADLK;
		goto out;
	}

	/* is_demoted() means the can_be_granted() above set the grmode
	   to NL, and left us on the granted queue.  This auto-demotion
	   (due to CONVDEADLK) might mean other locks, and/or this lock, are
	   now grantable.  We have to try to grant other converting locks
	   before we try again to grant this one. */

	if (FUNC8(lkb)) {
		FUNC7(r, DLM_LOCK_IV, NULL, NULL);
		if (FUNC0(r, lkb, 1, 0)) {
			FUNC6(r, lkb);
			FUNC9(r, lkb, 0);
			goto out;
		}
		/* else fall through and move to convert queue */
	}

	if (FUNC4(lkb)) {
		error = -EINPROGRESS;
		FUNC5(r, lkb);
		FUNC1(r, lkb, DLM_LKSTS_CONVERT);
		FUNC2(lkb);
		goto out;
	}

	error = -EAGAIN;
	FUNC9(r, lkb, -EAGAIN);
 out:
	return error;
}