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
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int /*<<< orphan*/  fcxp_wqe; int /*<<< orphan*/  timer; int /*<<< orphan*/  ns_retries; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
#define  RPSM_EVENT_ADDRESS_CHANGE 137 
#define  RPSM_EVENT_DELETE 136 
#define  RPSM_EVENT_FAB_SCN 135 
#define  RPSM_EVENT_FCXP_SENT 134 
#define  RPSM_EVENT_LOGO_IMP 133 
#define  RPSM_EVENT_LOGO_RCVD 132 
#define  RPSM_EVENT_PLOGI_COMP 131 
#define  RPSM_EVENT_PLOGI_RCVD 130 
#define  RPSM_EVENT_PLOGI_SEND 129 
#define  RPSM_EVENT_PRLO_RCVD 128 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_fcs_online ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sent ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_rport_s *rport,
	 enum rport_event event)
{
	FUNC7(rport->fcs, rport->pwwn);
	FUNC7(rport->fcs, rport->pid);
	FUNC7(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FCXP_SENT:
		FUNC5(rport, bfa_fcs_rport_sm_nsdisc_sent);
		break;

	case RPSM_EVENT_DELETE:
		FUNC5(rport, bfa_fcs_rport_sm_uninit);
		FUNC3(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC1(rport);
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC5(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC3(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC2(rport, NULL);
		break;

	case RPSM_EVENT_FAB_SCN:
	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
	case RPSM_EVENT_PLOGI_SEND:
		break;

	case RPSM_EVENT_ADDRESS_CHANGE:
		rport->ns_retries = 0; /* reset the retry count */
		break;

	case RPSM_EVENT_LOGO_IMP:
		FUNC5(rport, bfa_fcs_rport_sm_offline);
		FUNC3(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC6(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;

	case RPSM_EVENT_PLOGI_COMP:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_fcs_online);
		FUNC3(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC0(rport);
		break;

	default:
		FUNC4(rport->fcs, event);
	}
}