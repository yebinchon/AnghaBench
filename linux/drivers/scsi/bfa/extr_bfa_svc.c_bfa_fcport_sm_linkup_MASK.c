#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfad_s {int dummy; } ;
struct bfa_fcport_s {TYPE_1__* bfa; int /*<<< orphan*/  pwwn; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_4__ {int /*<<< orphan*/  plog; scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_FCPORT_SM_DISABLE 133 
#define  BFA_FCPORT_SM_ENABLE 132 
#define  BFA_FCPORT_SM_FAA_MISCONFIG 131 
#define  BFA_FCPORT_SM_HWFAIL 130 
#define  BFA_FCPORT_SM_LINKDOWN 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_DISABLE ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_ST_CHANGE ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISABLE ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISCONNECT ; 
 int /*<<< orphan*/  BFA_PORT_AEN_OFFLINE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  BFA_PORT_LINKDOWN ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling_qwait ; 
 int /*<<< orphan*/  bfa_fcport_sm_faa_misconfig ; 
 int /*<<< orphan*/  bfa_fcport_sm_iocdown ; 
 int /*<<< orphan*/  bfa_fcport_sm_linkdown ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct bfa_fcport_s *fcport,
	enum bfa_fcport_sm_event event)
{
	char pwwn_buf[BFA_STRING_32];
	struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;

	FUNC9(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_ENABLE:
		/*
		 * Already enabled.
		 */
		break;

	case BFA_FCPORT_SM_DISABLE:
		if (FUNC5(fcport))
			FUNC8(fcport, bfa_fcport_sm_disabling);
		else
			FUNC8(fcport,
					 bfa_fcport_sm_disabling_qwait);

		FUNC3(fcport);
		FUNC4(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
		FUNC6(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
		FUNC10(pwwn_buf, fcport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port offline: WWN = %s\n", pwwn_buf);
		FUNC2(fcport, BFA_PORT_AEN_OFFLINE);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port disabled: WWN = %s\n", pwwn_buf);
		FUNC2(fcport, BFA_PORT_AEN_DISABLE);
		break;

	case BFA_FCPORT_SM_LINKDOWN:
		FUNC8(fcport, bfa_fcport_sm_linkdown);
		FUNC3(fcport);
		FUNC4(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
		FUNC6(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_ST_CHANGE, 0, "Port Linkdown");
		FUNC10(pwwn_buf, fcport->pwwn);
		if (FUNC1(fcport->bfa)) {
			FUNC0(KERN_INFO, bfad, bfa_log_level,
				"Base port offline: WWN = %s\n", pwwn_buf);
			FUNC2(fcport, BFA_PORT_AEN_OFFLINE);
		} else {
			FUNC0(KERN_ERR, bfad, bfa_log_level,
				"Base port (WWN = %s) "
				"lost fabric connectivity\n", pwwn_buf);
			FUNC2(fcport, BFA_PORT_AEN_DISCONNECT);
		}
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC8(fcport, bfa_fcport_sm_stopped);
		FUNC3(fcport);
		FUNC10(pwwn_buf, fcport->pwwn);
		if (FUNC1(fcport->bfa)) {
			FUNC0(KERN_INFO, bfad, bfa_log_level,
				"Base port offline: WWN = %s\n", pwwn_buf);
			FUNC2(fcport, BFA_PORT_AEN_OFFLINE);
		} else {
			FUNC0(KERN_ERR, bfad, bfa_log_level,
				"Base port (WWN = %s) "
				"lost fabric connectivity\n", pwwn_buf);
			FUNC2(fcport, BFA_PORT_AEN_DISCONNECT);
		}
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC8(fcport, bfa_fcport_sm_iocdown);
		FUNC3(fcport);
		FUNC4(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
		FUNC10(pwwn_buf, fcport->pwwn);
		if (FUNC1(fcport->bfa)) {
			FUNC0(KERN_INFO, bfad, bfa_log_level,
				"Base port offline: WWN = %s\n", pwwn_buf);
			FUNC2(fcport, BFA_PORT_AEN_OFFLINE);
		} else {
			FUNC0(KERN_ERR, bfad, bfa_log_level,
				"Base port (WWN = %s) "
				"lost fabric connectivity\n", pwwn_buf);
			FUNC2(fcport, BFA_PORT_AEN_DISCONNECT);
		}
		break;

	case BFA_FCPORT_SM_FAA_MISCONFIG:
		FUNC3(fcport);
		FUNC2(fcport, BFA_PORT_AEN_DISCONNECT);
		FUNC8(fcport, bfa_fcport_sm_faa_misconfig);
		break;

	default:
		FUNC7(fcport->bfa, event);
	}
}