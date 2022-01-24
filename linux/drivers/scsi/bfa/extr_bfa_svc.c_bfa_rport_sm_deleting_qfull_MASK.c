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
struct bfa_rport_s {int rport_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; } ;
typedef  enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;

/* Variables and functions */
#define  BFA_RPORT_SM_HWFAIL 129 
#define  BFA_RPORT_SM_QRESUME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  bfa_rport_sm_deleting ; 
 int /*<<< orphan*/  bfa_rport_sm_uninit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_del_fwrsp ; 
 int /*<<< orphan*/  sm_del_hwf ; 

__attribute__((used)) static void
FUNC7(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
	FUNC6(rp->bfa, rp->rport_tag);
	FUNC6(rp->bfa, event);

	switch (event) {
	case BFA_RPORT_SM_QRESUME:
		FUNC5(rp, sm_del_fwrsp);
		FUNC4(rp, bfa_rport_sm_deleting);
		FUNC2(rp);
		break;

	case BFA_RPORT_SM_HWFAIL:
		FUNC5(rp, sm_del_hwf);
		FUNC4(rp, bfa_rport_sm_uninit);
		FUNC0(&rp->reqq_wait);
		FUNC1(rp);
		break;

	default:
		FUNC3(rp->bfa, event);
	}
}