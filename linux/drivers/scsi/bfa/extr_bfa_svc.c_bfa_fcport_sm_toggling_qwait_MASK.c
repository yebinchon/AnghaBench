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
struct bfa_fcport_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;

/* Variables and functions */
#define  BFA_FCPORT_SM_DISABLE 134 
#define  BFA_FCPORT_SM_ENABLE 133 
#define  BFA_FCPORT_SM_HWFAIL 132 
#define  BFA_FCPORT_SM_LINKDOWN 131 
#define  BFA_FCPORT_SM_LINKUP 130 
#define  BFA_FCPORT_SM_QRESUME 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling_qwait ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling_qwait ; 
 int /*<<< orphan*/  bfa_fcport_sm_iocfail ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcport_s *fcport,
				 enum bfa_fcport_sm_event event)
{
	FUNC5(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_QRESUME:
		FUNC4(fcport, bfa_fcport_sm_disabling);
		FUNC0(fcport);
		if (FUNC1(fcport))
			FUNC4(fcport, bfa_fcport_sm_enabling);
		else
			FUNC4(fcport,
					 bfa_fcport_sm_enabling_qwait);
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC4(fcport, bfa_fcport_sm_stopped);
		FUNC2(&fcport->reqq_wait);
		break;

	case BFA_FCPORT_SM_ENABLE:
		break;

	case BFA_FCPORT_SM_DISABLE:
		FUNC4(fcport, bfa_fcport_sm_disabling_qwait);
		break;

	case BFA_FCPORT_SM_LINKUP:
	case BFA_FCPORT_SM_LINKDOWN:
		/*
		 * Possible to get link events when doing back-to-back
		 * enable/disables.
		 */
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC4(fcport, bfa_fcport_sm_iocfail);
		FUNC2(&fcport->reqq_wait);
		break;

	default:
		FUNC3(fcport->bfa, event);
	}
}