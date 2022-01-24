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
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; int /*<<< orphan*/  fdisc_retries; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_PORT_SM_STOP ; 
#define  BFA_FCS_VPORT_SM_DELETE 131 
#define  BFA_FCS_VPORT_SM_OFFLINE 130 
#define  BFA_FCS_VPORT_SM_ONLINE 129 
#define  BFA_FCS_VPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_cleanup ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_fdisc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC7(FUNC0(vport), FUNC1(vport));
	FUNC7(FUNC0(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_DELETE:
		FUNC6(vport, bfa_fcs_vport_sm_cleanup);
		FUNC2(&vport->lport);
		break;

	case BFA_FCS_VPORT_SM_ONLINE:
		FUNC6(vport, bfa_fcs_vport_sm_fdisc);
		vport->fdisc_retries = 0;
		FUNC3(vport);
		break;

	case BFA_FCS_VPORT_SM_STOP:
		FUNC6(vport, bfa_fcs_vport_sm_cleanup);
		FUNC5(&vport->lport, BFA_FCS_PORT_SM_STOP);
		break;

	case BFA_FCS_VPORT_SM_OFFLINE:
		/*
		 * This can happen if the vport couldn't be initialzied
		 * due the fact that the npiv was not enabled on the switch.
		 * In that case we will put the vport in offline state.
		 * However, the link can go down and cause the this event to
		 * be sent when we are already offline. Ignore it.
		 */
		break;

	default:
		FUNC4(FUNC0(vport), event);
	}
}