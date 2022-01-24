#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; int old_pid; TYPE_2__* fcs; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  ns_retries; TYPE_3__* port; int /*<<< orphan*/  timer; int /*<<< orphan*/  plogi_retries; int /*<<< orphan*/  prlo; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {TYPE_1__* fcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_5__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int BFA_FCS_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  BFA_FCS_RPORT_MAX_RETRIES ; 
 int /*<<< orphan*/  BFA_PORT_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int FC_RA_TOV ; 
#define  RPSM_EVENT_ACCEPTED 140 
#define  RPSM_EVENT_ADDRESS_CHANGE 139 
#define  RPSM_EVENT_DELETE 138 
#define  RPSM_EVENT_FAB_SCN 137 
#define  RPSM_EVENT_FAILED 136 
#define  RPSM_EVENT_LOGO_IMP 135 
#define  RPSM_EVENT_LOGO_RCVD 134 
#define  RPSM_EVENT_PLOGI_COMP 133 
#define  RPSM_EVENT_PLOGI_RCVD 132 
#define  RPSM_EVENT_PLOGI_RETRY 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_SCN_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_fcs_online ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi_retry ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  rport_del_max_plogi_retry ; 

__attribute__((used)) static void
FUNC14(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
	FUNC13(rport->fcs, rport->pwwn);
	FUNC13(rport->fcs, rport->pid);
	FUNC13(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_ACCEPTED:
		FUNC10(rport, bfa_fcs_rport_sm_fc4_fcs_online);
		rport->plogi_retries = 0;
		FUNC2(rport);
		break;

	case RPSM_EVENT_LOGO_RCVD:
		FUNC4(rport);
		/* fall through */
	case RPSM_EVENT_PRLO_RCVD:
		if (rport->prlo == BFA_TRUE)
			FUNC7(rport);

		FUNC8(rport->fcxp);
		/* fall through */
	case RPSM_EVENT_FAILED:
		if (rport->plogi_retries < BFA_FCS_RPORT_MAX_RETRIES) {
			rport->plogi_retries++;
			FUNC10(rport, bfa_fcs_rport_sm_plogi_retry);
			FUNC12(rport->fcs->bfa, &rport->timer,
					bfa_fcs_rport_timeout, rport,
					BFA_FCS_RETRY_TIMEOUT);
		} else {
			FUNC11(rport->port, rport_del_max_plogi_retry);
			rport->old_pid = rport->pid;
			rport->pid = 0;
			FUNC10(rport, bfa_fcs_rport_sm_offline);
			FUNC12(rport->fcs->bfa, &rport->timer,
					bfa_fcs_rport_timeout, rport,
					bfa_fcs_rport_del_timeout);
		}
		break;

	case RPSM_EVENT_SCN_ONLINE:
		break;

	case RPSM_EVENT_SCN_OFFLINE:
		FUNC10(rport, bfa_fcs_rport_sm_offline);
		FUNC8(rport->fcxp);
		FUNC12(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;

	case RPSM_EVENT_PLOGI_RETRY:
		rport->plogi_retries = 0;
		FUNC10(rport, bfa_fcs_rport_sm_plogi_retry);
		FUNC12(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				(FC_RA_TOV * 1000));
		break;

	case RPSM_EVENT_LOGO_IMP:
		rport->pid = 0;
		FUNC10(rport, bfa_fcs_rport_sm_offline);
		FUNC8(rport->fcxp);
		FUNC12(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;

	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_FAB_SCN:
		FUNC8(rport->fcxp);
		FUNC0(!(FUNC1(rport->port->fcs->bfa) !=
					BFA_PORT_TOPOLOGY_LOOP));
		FUNC10(rport, bfa_fcs_rport_sm_nsdisc_sending);
		rport->ns_retries = 0;
		FUNC5(rport, NULL);
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC10(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC8(rport->fcxp);
		FUNC6(rport, NULL);
		break;

	case RPSM_EVENT_DELETE:
		FUNC10(rport, bfa_fcs_rport_sm_uninit);
		FUNC8(rport->fcxp);
		FUNC3(rport);
		break;

	case RPSM_EVENT_PLOGI_COMP:
		FUNC10(rport, bfa_fcs_rport_sm_fc4_fcs_online);
		FUNC8(rport->fcxp);
		FUNC2(rport);
		break;

	default:
		FUNC9(rport->fcs, event);
	}
}