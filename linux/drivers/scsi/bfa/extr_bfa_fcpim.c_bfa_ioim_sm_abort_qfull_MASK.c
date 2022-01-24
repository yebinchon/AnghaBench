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
struct bfa_ioim_s {int iotag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  hcb_qe; TYPE_1__* iosp; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int /*<<< orphan*/  reqq_wait; int /*<<< orphan*/  abort_explicit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_IOIM_SM_CLEANUP 133 
#define  BFA_IOIM_SM_COMP 132 
#define  BFA_IOIM_SM_COMP_GOOD 131 
#define  BFA_IOIM_SM_DONE 130 
#define  BFA_IOIM_SM_HWFAIL 129 
#define  BFA_IOIM_SM_QRESUME 128 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __bfa_cb_ioim_abort ; 
 int /*<<< orphan*/  __bfa_cb_ioim_failed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_abort ; 
 int /*<<< orphan*/  bfa_ioim_sm_cleanup_qfull ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	FUNC7(ioim->bfa, ioim->iotag);
	FUNC7(ioim->bfa, event);

	switch (event) {
	case BFA_IOIM_SM_QRESUME:
		FUNC6(ioim, bfa_ioim_sm_abort);
		FUNC3(ioim);
		break;

	case BFA_IOIM_SM_CLEANUP:
		FUNC0(ioim->iosp->abort_explicit != BFA_TRUE);
		ioim->iosp->abort_explicit = BFA_FALSE;
		FUNC6(ioim, bfa_ioim_sm_cleanup_qfull);
		break;

	case BFA_IOIM_SM_COMP_GOOD:
	case BFA_IOIM_SM_COMP:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC4(&ioim->iosp->reqq_wait);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	case BFA_IOIM_SM_DONE:
		FUNC6(ioim, bfa_ioim_sm_hcb_free);
		FUNC4(&ioim->iosp->reqq_wait);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	case BFA_IOIM_SM_HWFAIL:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC4(&ioim->iosp->reqq_wait);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
			      ioim);
		break;

	default:
		FUNC5(ioim->bfa, event);
	}
}