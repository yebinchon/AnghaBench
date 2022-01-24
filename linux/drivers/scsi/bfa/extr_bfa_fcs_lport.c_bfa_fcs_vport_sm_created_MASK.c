#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fab_no_npiv; } ;
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; TYPE_1__ vport_stats; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
#define  BFA_FCS_VPORT_SM_DELETE 131 
#define  BFA_FCS_VPORT_SM_OFFLINE 130 
#define  BFA_FCS_VPORT_SM_ONLINE 129 
#define  BFA_FCS_VPORT_SM_START 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_vport_s*) ; 
 int FUNC2 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_online ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_cleanup ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_fdisc ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_offline ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC9(FUNC1(vport), FUNC2(vport));
	FUNC9(FUNC1(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_START:
		if (FUNC6(FUNC0(vport),
					bfa_fcs_fabric_sm_online)
		    && FUNC3(FUNC0(vport))) {
			FUNC8(vport, bfa_fcs_vport_sm_fdisc);
			FUNC5(vport);
		} else {
			/*
			 * Fabric is offline or not NPIV capable, stay in
			 * offline state.
			 */
			vport->vport_stats.fab_no_npiv++;
			FUNC8(vport, bfa_fcs_vport_sm_offline);
		}
		break;

	case BFA_FCS_VPORT_SM_DELETE:
		FUNC8(vport, bfa_fcs_vport_sm_cleanup);
		FUNC4(&vport->lport);
		break;

	case BFA_FCS_VPORT_SM_ONLINE:
	case BFA_FCS_VPORT_SM_OFFLINE:
		/*
		 * Ignore ONLINE/OFFLINE events from fabric
		 * till vport is started.
		 */
		break;

	default:
		FUNC7(FUNC1(vport), event);
	}
}