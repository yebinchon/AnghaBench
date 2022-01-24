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
struct bfa_fcs_lport_ns_s {TYPE_2__* port; int /*<<< orphan*/  timer; } ;
typedef  enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {int /*<<< orphan*/  fcs; TYPE_1__ port_cfg; } ;

/* Variables and functions */
#define  NSSM_EVENT_PORT_OFFLINE 129 
#define  NSSM_EVENT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_sending_gid_ft ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_lport_ns_s *ns,
				enum vport_ns_event event)
{
	FUNC4(ns->port->fcs, ns->port->port_cfg.pwwn);
	FUNC4(ns->port->fcs, event);

	switch (event) {
	case NSSM_EVENT_TIMEOUT:
		FUNC2(ns, bfa_fcs_lport_ns_sm_sending_gid_ft);
		FUNC0(ns, NULL);
		break;

	case NSSM_EVENT_PORT_OFFLINE:
		FUNC2(ns, bfa_fcs_lport_ns_sm_offline);
		FUNC3(&ns->timer);
		break;

	default:
		FUNC1(ns->port->fcs, event);
	}
}