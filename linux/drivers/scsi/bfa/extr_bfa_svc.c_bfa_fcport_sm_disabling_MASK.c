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
struct bfad_s {int dummy; } ;
struct bfa_fcport_s {TYPE_1__* bfa; int /*<<< orphan*/  pwwn; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_3__ {int /*<<< orphan*/  plog; scalar_t__ bfad; } ;

/* Variables and functions */
#define  BFA_FCPORT_SM_DISABLE 134 
#define  BFA_FCPORT_SM_ENABLE 133 
#define  BFA_FCPORT_SM_FWRSP 132 
#define  BFA_FCPORT_SM_HWFAIL 131 
#define  BFA_FCPORT_SM_LINKDOWN 130 
#define  BFA_FCPORT_SM_LINKUP 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_ENABLE ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL ; 
 int /*<<< orphan*/  BFA_PORT_AEN_ENABLE ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabled ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling_qwait ; 
 int /*<<< orphan*/  bfa_fcport_sm_iocfail ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcport_s *fcport,
						enum bfa_fcport_sm_event event)
{
	char pwwn_buf[BFA_STRING_32];
	struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;
	FUNC6(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_FWRSP:
		FUNC5(fcport, bfa_fcport_sm_disabled);
		break;

	case BFA_FCPORT_SM_DISABLE:
		/*
		 * Already being disabled.
		 */
		break;

	case BFA_FCPORT_SM_ENABLE:
		if (FUNC2(fcport))
			FUNC5(fcport, bfa_fcport_sm_enabling);
		else
			FUNC5(fcport,
					 bfa_fcport_sm_enabling_qwait);

		FUNC3(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_ENABLE, 0, "Port Enable");
		FUNC7(pwwn_buf, fcport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port enabled: WWN = %s\n", pwwn_buf);
		FUNC1(fcport, BFA_PORT_AEN_ENABLE);
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC5(fcport, bfa_fcport_sm_stopped);
		break;

	case BFA_FCPORT_SM_LINKUP:
	case BFA_FCPORT_SM_LINKDOWN:
		/*
		 * Possible to get link events when doing back-to-back
		 * enable/disables.
		 */
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC5(fcport, bfa_fcport_sm_iocfail);
		break;

	default:
		FUNC4(fcport->bfa, event);
	}
}