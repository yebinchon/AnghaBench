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
struct bfa_ioim_s {int iotag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  hcb_qe; int /*<<< orphan*/  io_cbfn; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;

/* Variables and functions */
#define  BFA_IOIM_SM_ABORT 137 
#define  BFA_IOIM_SM_ABORT_COMP 136 
#define  BFA_IOIM_SM_ABORT_DONE 135 
#define  BFA_IOIM_SM_CLEANUP 134 
#define  BFA_IOIM_SM_COMP 133 
#define  BFA_IOIM_SM_COMP_GOOD 132 
#define  BFA_IOIM_SM_COMP_UTAG 131 
#define  BFA_IOIM_SM_DONE 130 
#define  BFA_IOIM_SM_FREE 129 
#define  BFA_IOIM_SM_HWFAIL 128 
 int /*<<< orphan*/  __bfa_cb_ioim_abort ; 
 int /*<<< orphan*/  __bfa_cb_ioim_failed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	FUNC5(ioim->bfa, ioim->iotag);
	FUNC5(ioim->bfa, event);

	switch (event) {
	case BFA_IOIM_SM_COMP_GOOD:
	case BFA_IOIM_SM_COMP:
	case BFA_IOIM_SM_DONE:
	case BFA_IOIM_SM_FREE:
		break;

	case BFA_IOIM_SM_ABORT:
		/*
		 * IO is already being aborted implicitly
		 */
		ioim->io_cbfn = __bfa_cb_ioim_abort;
		break;

	case BFA_IOIM_SM_ABORT_DONE:
		FUNC4(ioim, bfa_ioim_sm_hcb_free);
		FUNC0(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);
		FUNC2(ioim);
		break;

	case BFA_IOIM_SM_ABORT_COMP:
		FUNC4(ioim, bfa_ioim_sm_hcb);
		FUNC0(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);
		FUNC2(ioim);
		break;

	case BFA_IOIM_SM_COMP_UTAG:
		FUNC4(ioim, bfa_ioim_sm_hcb);
		FUNC0(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);
		FUNC2(ioim);
		break;

	case BFA_IOIM_SM_HWFAIL:
		FUNC4(ioim, bfa_ioim_sm_hcb);
		FUNC1(ioim);
		FUNC0(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
			      ioim);
		break;

	case BFA_IOIM_SM_CLEANUP:
		/*
		 * IO can be in cleanup state already due to TM command.
		 * 2nd cleanup request comes from ITN offline event.
		 */
		break;

	default:
		FUNC3(ioim->bfa, event);
	}
}