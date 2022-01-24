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
struct bfa_ioim_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  hcb_qe; TYPE_1__* iosp; int /*<<< orphan*/  reqq; int /*<<< orphan*/  itnim; int /*<<< orphan*/  io_cbfn; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int /*<<< orphan*/  reqq_wait; int /*<<< orphan*/  abort_explicit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_IOIM_SM_ABORT 131 
#define  BFA_IOIM_SM_CLEANUP 130 
#define  BFA_IOIM_SM_FREE 129 
#define  BFA_IOIM_SM_HWFAIL 128 
 int /*<<< orphan*/  __bfa_cb_ioim_abort ; 
 int /*<<< orphan*/  __bfa_cb_ioim_failed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_active ; 
 int /*<<< orphan*/  bfa_ioim_sm_cleanup ; 
 int /*<<< orphan*/  bfa_ioim_sm_cleanup_qfull ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb_free ; 
 int /*<<< orphan*/  bfa_ioim_sm_qfull ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qwait ; 

__attribute__((used)) static void
FUNC9(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	switch (event) {
	case BFA_IOIM_SM_FREE:
		/* abts and rrq done. Now retry the IO with new tag */
		FUNC4(ioim);
		if (!FUNC3(ioim)) {
			FUNC7(ioim, bfa_ioim_sm_qfull);
			break;
		}
		FUNC7(ioim, bfa_ioim_sm_active);
	break;

	case BFA_IOIM_SM_CLEANUP:
		ioim->iosp->abort_explicit = BFA_FALSE;
		ioim->io_cbfn = __bfa_cb_ioim_failed;

		if (FUNC2(ioim))
			FUNC7(ioim, bfa_ioim_sm_cleanup);
		else {
			FUNC7(ioim, bfa_ioim_sm_cleanup_qfull);
			FUNC8(ioim->itnim, qwait);
			FUNC5(ioim->bfa, ioim->reqq,
					  &ioim->iosp->reqq_wait);
		}
	break;

	case BFA_IOIM_SM_HWFAIL:
		FUNC7(ioim, bfa_ioim_sm_hcb);
		FUNC1(ioim);
		FUNC0(ioim->bfa, &ioim->hcb_qe,
			 __bfa_cb_ioim_failed, ioim);
		break;

	case BFA_IOIM_SM_ABORT:
		/* in this state IO abort is done.
		 * Waiting for IO tag resource free.
		 */
		FUNC7(ioim, bfa_ioim_sm_hcb_free);
		FUNC0(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	default:
		FUNC6(ioim->bfa, event);
	}
}