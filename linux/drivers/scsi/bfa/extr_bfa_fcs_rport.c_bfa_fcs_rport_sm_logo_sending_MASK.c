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
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int /*<<< orphan*/  fcxp_wqe; int /*<<< orphan*/  prlo; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TRUE ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 134 
#define  RPSM_EVENT_FAB_SCN 133 
#define  RPSM_EVENT_FCXP_SENT 132 
#define  RPSM_EVENT_LOGO_RCVD 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_SCN_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_rport_s *rport,
	 enum rport_event event)
{
	FUNC6(rport->fcs, rport->pwwn);
	FUNC6(rport->fcs, rport->pid);
	FUNC6(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FCXP_SENT:
		/* Once LOGO is sent, we donot wait for the response */
		FUNC5(rport, bfa_fcs_rport_sm_uninit);
		FUNC0(rport);
		break;

	case RPSM_EVENT_SCN_ONLINE:
	case RPSM_EVENT_SCN_OFFLINE:
	case RPSM_EVENT_FAB_SCN:
	case RPSM_EVENT_ADDRESS_CHANGE:
		break;

	case RPSM_EVENT_LOGO_RCVD:
		FUNC1(rport);
		/* fall through */
	case RPSM_EVENT_PRLO_RCVD:
		if (rport->prlo == BFA_TRUE)
			FUNC2(rport);

		FUNC5(rport, bfa_fcs_rport_sm_uninit);
		FUNC3(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC0(rport);
		break;

	default:
		FUNC4(rport->fcs, event);
	}
}