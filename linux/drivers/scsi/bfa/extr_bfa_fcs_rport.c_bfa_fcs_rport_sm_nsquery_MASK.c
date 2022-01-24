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
struct bfa_fcs_rport_s {int pwwn; int pid; int /*<<< orphan*/  fcs; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  ns_retries; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;

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
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_adisc_online_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_logorcv ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_logosend ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsquery_sending ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
	FUNC6(rport->fcs, rport->pwwn);
	FUNC6(rport->fcs, rport->pid);
	FUNC6(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_ACCEPTED:
		FUNC5(rport, bfa_fcs_rport_sm_adisc_online_sending);
		FUNC1(rport, NULL);
		break;

	case RPSM_EVENT_FAILED:
		rport->ns_retries++;
		if (rport->ns_retries < BFA_FCS_RPORT_MAX_RETRIES) {
			FUNC5(rport,
					 bfa_fcs_rport_sm_nsquery_sending);
			FUNC2(rport, NULL);
		} else {
			FUNC5(rport, bfa_fcs_rport_sm_fc4_offline);
			FUNC0(rport);
		}
		break;

	case RPSM_EVENT_DELETE:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_logosend);
		FUNC3(rport->fcxp);
		FUNC0(rport);
		break;

	case RPSM_EVENT_FAB_SCN:
		break;

	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_logorcv);
		FUNC3(rport->fcxp);
		FUNC0(rport);
		break;

	case RPSM_EVENT_PLOGI_COMP:
	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_PLOGI_RCVD:
	case RPSM_EVENT_LOGO_IMP:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_offline);
		FUNC3(rport->fcxp);
		FUNC0(rport);
		break;

	default:
		FUNC4(rport->fcs, event);
	}
}