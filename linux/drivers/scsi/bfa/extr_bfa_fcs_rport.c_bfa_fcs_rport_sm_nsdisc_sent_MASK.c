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
struct bfa_fcs_rport_s {int pwwn; int pid; int old_pid; TYPE_1__* fcs; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  timer; int /*<<< orphan*/  ns_retries; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_RPORT_MAX_RETRIES ; 
#define  RPSM_EVENT_ACCEPTED 137 
#define  RPSM_EVENT_ADDRESS_CHANGE 136 
#define  RPSM_EVENT_DELETE 135 
#define  RPSM_EVENT_FAB_SCN 134 
#define  RPSM_EVENT_FAILED 133 
#define  RPSM_EVENT_LOGO_IMP 132 
#define  RPSM_EVENT_LOGO_RCVD 131 
#define  RPSM_EVENT_PLOGI_COMP 130 
#define  RPSM_EVENT_PLOGI_RCVD 129 
#define  RPSM_EVENT_PRLO_RCVD 128 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_fcs_online ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC12(struct bfa_fcs_rport_s *rport,
			enum rport_event event)
{
	FUNC11(rport->fcs, rport->pwwn);
	FUNC11(rport->fcs, rport->pid);
	FUNC11(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_ACCEPTED:
	case RPSM_EVENT_ADDRESS_CHANGE:
		if (rport->pid) {
			FUNC9(rport, bfa_fcs_rport_sm_plogi_sending);
			FUNC4(rport, NULL);
		} else {
			FUNC9(rport,
				 bfa_fcs_rport_sm_nsdisc_sending);
			rport->ns_retries = 0;
			FUNC3(rport, NULL);
		}
		break;

	case RPSM_EVENT_FAILED:
		rport->ns_retries++;
		if (rport->ns_retries < BFA_FCS_RPORT_MAX_RETRIES) {
			FUNC9(rport,
				 bfa_fcs_rport_sm_nsdisc_sending);
			FUNC3(rport, NULL);
		} else {
			rport->old_pid = rport->pid;
			rport->pid = 0;
			FUNC9(rport, bfa_fcs_rport_sm_offline);
			FUNC10(rport->fcs->bfa, &rport->timer,
					bfa_fcs_rport_timeout, rport,
					bfa_fcs_rport_del_timeout);
		};
		break;

	case RPSM_EVENT_DELETE:
		FUNC9(rport, bfa_fcs_rport_sm_uninit);
		FUNC7(rport->fcxp);
		FUNC1(rport);
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC9(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC7(rport->fcxp);
		FUNC5(rport, NULL);
		break;

	case RPSM_EVENT_LOGO_IMP:
		rport->pid = 0;
		FUNC9(rport, bfa_fcs_rport_sm_offline);
		FUNC7(rport->fcxp);
		FUNC10(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;


	case RPSM_EVENT_PRLO_RCVD:
		FUNC6(rport);
		break;
	case RPSM_EVENT_FAB_SCN:
		/*
		 * ignore, wait for NS query response
		 */
		break;

	case RPSM_EVENT_LOGO_RCVD:
		/*
		 * Not logged-in yet. Accept LOGO.
		 */
		FUNC2(rport);
		break;

	case RPSM_EVENT_PLOGI_COMP:
		FUNC9(rport, bfa_fcs_rport_sm_fc4_fcs_online);
		FUNC7(rport->fcxp);
		FUNC0(rport);
		break;

	default:
		FUNC8(rport->fcs, event);
	}
}