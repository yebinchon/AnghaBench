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
struct TYPE_2__ {int /*<<< orphan*/  fdisc_retries; } ;
struct bfa_fcs_vport_s {int /*<<< orphan*/  fdisc_retries; TYPE_1__ vport_stats; int /*<<< orphan*/  timer; int /*<<< orphan*/  lport; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
#define  BFA_FCS_VPORT_SM_DELETE 130 
#define  BFA_FCS_VPORT_SM_OFFLINE 129 
#define  BFA_FCS_VPORT_SM_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_cleanup ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_fdisc ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_offline ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_vport_s *vport,
			     enum bfa_fcs_vport_event event)
{
	FUNC7(FUNC0(vport), FUNC1(vport));
	FUNC7(FUNC0(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_DELETE:
		FUNC5(vport, bfa_fcs_vport_sm_cleanup);
		FUNC6(&vport->timer);
		FUNC2(&vport->lport);
		break;

	case BFA_FCS_VPORT_SM_OFFLINE:
		FUNC5(vport, bfa_fcs_vport_sm_offline);
		FUNC6(&vport->timer);
		break;

	case BFA_FCS_VPORT_SM_TIMEOUT:
		FUNC5(vport, bfa_fcs_vport_sm_fdisc);
		vport->vport_stats.fdisc_retries++;
		vport->fdisc_retries++;
		FUNC3(vport);
		break;

	default:
		FUNC4(FUNC0(vport), event);
	}
}