#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcport_s {TYPE_1__* bfa; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_3__ {int /*<<< orphan*/  plog; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_FCPORT_SM_DISABLE 133 
#define  BFA_FCPORT_SM_DPORTENABLE 132 
#define  BFA_FCPORT_SM_ENABLE 131 
#define  BFA_FCPORT_SM_HWFAIL 130 
#define  BFA_FCPORT_SM_START 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  BFA_PL_EID_PORT_DISABLE ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISABLE ; 
 int /*<<< orphan*/  BFA_PORT_LINKDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling_qwait ; 
 int /*<<< orphan*/  bfa_fcport_sm_iocdown ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcport_s *fcport,
			    enum bfa_fcport_sm_event event)
{
	FUNC7(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_DPORTENABLE:
	case BFA_FCPORT_SM_ENABLE:
	case BFA_FCPORT_SM_START:
		/*
		 * Ignore event for a port as there is FAA misconfig
		 */
		break;

	case BFA_FCPORT_SM_DISABLE:
		if (FUNC3(fcport))
			FUNC6(fcport, bfa_fcport_sm_disabling);
		else
			FUNC6(fcport, bfa_fcport_sm_disabling_qwait);

		FUNC1(fcport);
		FUNC2(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
		FUNC4(fcport->bfa->plog, BFA_PL_MID_HAL,
			     BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
		FUNC0(fcport, BFA_PORT_AEN_DISABLE);
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC6(fcport, bfa_fcport_sm_stopped);
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC1(fcport);
		FUNC2(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
		FUNC6(fcport, bfa_fcport_sm_iocdown);
		break;

	default:
		FUNC5(fcport->bfa, event);
	}
}