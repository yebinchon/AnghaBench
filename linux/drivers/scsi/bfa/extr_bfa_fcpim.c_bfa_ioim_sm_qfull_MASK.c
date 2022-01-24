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
struct TYPE_2__ {int /*<<< orphan*/  reqq_wait; } ;

/* Variables and functions */
#define  BFA_IOIM_SM_ABORT 131 
#define  BFA_IOIM_SM_CLEANUP 130 
#define  BFA_IOIM_SM_HWFAIL 129 
#define  BFA_IOIM_SM_QRESUME 128 
 int /*<<< orphan*/  __bfa_cb_ioim_abort ; 
 int /*<<< orphan*/  __bfa_cb_ioim_failed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_active ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
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
		FUNC6(ioim, bfa_ioim_sm_active);
		FUNC3(ioim);
		break;

	case BFA_IOIM_SM_ABORT:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC4(&ioim->iosp->reqq_wait);
		FUNC1(ioim);
		FUNC0(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
			      ioim);
		break;

	case BFA_IOIM_SM_CLEANUP:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC4(&ioim->iosp->reqq_wait);
		FUNC0(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
			      ioim);
		FUNC2(ioim);
		break;

	case BFA_IOIM_SM_HWFAIL:
		FUNC6(ioim, bfa_ioim_sm_hcb);
		FUNC4(&ioim->iosp->reqq_wait);
		FUNC1(ioim);
		FUNC0(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
			      ioim);
		break;

	default:
		FUNC5(ioim->bfa, event);
	}
}