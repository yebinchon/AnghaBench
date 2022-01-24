#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_lport_ms_s {TYPE_2__* port; int /*<<< orphan*/  fcxp_wqe; } ;
typedef  enum port_ms_event { ____Placeholder_port_ms_event } port_ms_event ;
struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {int /*<<< orphan*/  fcs; TYPE_1__ port_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
#define  MSSM_EVENT_FCXP_SENT 129 
#define  MSSM_EVENT_PORT_OFFLINE 128 
 int /*<<< orphan*/  bfa_fcs_lport_ms_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_ms_sm_plogi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_ms_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_lport_ms_s *ms,
				enum port_ms_event event)
{
	FUNC4(ms->port->fcs, ms->port->port_cfg.pwwn);
	FUNC4(ms->port->fcs, event);

	switch (event) {
	case MSSM_EVENT_FCXP_SENT:
		FUNC3(ms, bfa_fcs_lport_ms_sm_plogi);
		break;

	case MSSM_EVENT_PORT_OFFLINE:
		FUNC3(ms, bfa_fcs_lport_ms_sm_offline);
		FUNC1(FUNC0(ms->port),
					   &ms->fcxp_wqe);
		break;

	default:
		FUNC2(ms->port->fcs, event);
	}
}