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
struct bfa_ioim_s {int iotag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  hcb_qe; TYPE_1__* iosp; int /*<<< orphan*/  reqq; int /*<<< orphan*/  itnim; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int /*<<< orphan*/  reqq_wait; int /*<<< orphan*/  abort_explicit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_IOIM_SM_ABORT_COMP 136 
#define  BFA_IOIM_SM_ABORT_DONE 135 
#define  BFA_IOIM_SM_CLEANUP 134 
#define  BFA_IOIM_SM_COMP 133 
#define  BFA_IOIM_SM_COMP_GOOD 132 
#define  BFA_IOIM_SM_COMP_UTAG 131 
#define  BFA_IOIM_SM_DONE 130 
#define  BFA_IOIM_SM_FREE 129 
#define  BFA_IOIM_SM_HWFAIL 128 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __bfa_cb_ioim_abort ; 
 int /*<<< orphan*/  __bfa_cb_ioim_failed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_cleanup ; 
 int /*<<< orphan*/  bfa_ioim_sm_cleanup_qfull ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qwait ; 

__attribute__((used)) static void
FUNC9(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	FUNC8(ioim->bfa, ioim->iotag);
	FUNC8(ioim->bfa, event);

	switch (event) {
	case BFA_IOIM_SM_COMP_GOOD:
	case BFA_IOIM_SM_COMP:
	case BFA_IOIM_SM_DONE:
	case BFA_IOIM_SM_FREE:
		break;

	case BFA_IOIM_SM_ABORT_DONE:
		FUNC6(ioim, bfa_ioim_sm_hcb_free);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	case BFA_IOIM_SM_ABORT_COMP:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	case BFA_IOIM_SM_COMP_UTAG:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	case BFA_IOIM_SM_CLEANUP:
		FUNC0(ioim->iosp->abort_explicit != BFA_TRUE);
		ioim->iosp->abort_explicit = BFA_FALSE;

		if (FUNC3(ioim))
			FUNC6(ioim, bfa_ioim_sm_cleanup);
		else {
			FUNC6(ioim, bfa_ioim_sm_cleanup_qfull);
			FUNC7(ioim->itnim, qwait);
			FUNC4(ioim->bfa, ioim->reqq,
					  &ioim->iosp->reqq_wait);
		}
		break;

	case BFA_IOIM_SM_HWFAIL:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
			      ioim);
		break;

	default:
		FUNC5(ioim->bfa, event);
	}
}