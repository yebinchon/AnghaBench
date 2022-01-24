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
struct bfa_fcport_s {TYPE_1__* bfa; int /*<<< orphan*/  reqq_wait; int /*<<< orphan*/  pwwn; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_3__ {int /*<<< orphan*/  plog; scalar_t__ bfad; } ;

/* Variables and functions */
#define  BFA_FCPORT_SM_DISABLE 135 
#define  BFA_FCPORT_SM_ENABLE 134 
#define  BFA_FCPORT_SM_FAA_MISCONFIG 133 
#define  BFA_FCPORT_SM_HWFAIL 132 
#define  BFA_FCPORT_SM_LINKDOWN 131 
#define  BFA_FCPORT_SM_LINKUP 130 
#define  BFA_FCPORT_SM_QRESUME 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_DISABLE ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISABLE ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISCONNECT ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabled ; 
 int /*<<< orphan*/  bfa_fcport_sm_enabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_faa_misconfig ; 
 int /*<<< orphan*/  bfa_fcport_sm_iocdown ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct bfa_fcport_s *fcport,
				enum bfa_fcport_sm_event event)
{
	char pwwn_buf[BFA_STRING_32];
	struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;
	FUNC8(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_QRESUME:
		FUNC7(fcport, bfa_fcport_sm_enabling);
		FUNC3(fcport);
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC5(&fcport->reqq_wait);
		FUNC7(fcport, bfa_fcport_sm_stopped);
		break;

	case BFA_FCPORT_SM_ENABLE:
		/*
		 * Already enable is in progress.
		 */
		break;

	case BFA_FCPORT_SM_DISABLE:
		/*
		 * Just send disable request to firmware when room becomes
		 * available in request queue.
		 */
		FUNC7(fcport, bfa_fcport_sm_disabled);
		FUNC5(&fcport->reqq_wait);
		FUNC4(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
		FUNC9(pwwn_buf, fcport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port disabled: WWN = %s\n", pwwn_buf);
		FUNC1(fcport, BFA_PORT_AEN_DISABLE);
		break;

	case BFA_FCPORT_SM_LINKUP:
	case BFA_FCPORT_SM_LINKDOWN:
		/*
		 * Possible to get link events when doing back-to-back
		 * enable/disables.
		 */
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC5(&fcport->reqq_wait);
		FUNC7(fcport, bfa_fcport_sm_iocdown);
		break;

	case BFA_FCPORT_SM_FAA_MISCONFIG:
		FUNC2(fcport);
		FUNC1(fcport, BFA_PORT_AEN_DISCONNECT);
		FUNC7(fcport, bfa_fcport_sm_faa_misconfig);
		break;

	default:
		FUNC6(fcport->bfa, event);
	}
}