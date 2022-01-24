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
struct TYPE_4__ {int pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; TYPE_2__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {TYPE_1__* ms; } ;
typedef  enum port_fdmi_event { ____Placeholder_port_fdmi_event } port_fdmi_event ;
struct TYPE_3__ {struct bfa_fcs_lport_s* port; } ;

/* Variables and functions */
#define  FDMISM_EVENT_PORT_OFFLINE 128 
 int /*<<< orphan*/  bfa_fcs_lport_fdmi_sm_offline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_fdmi_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bfa_fcs_lport_fdmi_s *fdmi,
				enum port_fdmi_event event)
{
	struct bfa_fcs_lport_s *port = fdmi->ms->port;

	FUNC2(port->fcs, port->port_cfg.pwwn);
	FUNC2(port->fcs, event);

	switch (event) {
	case FDMISM_EVENT_PORT_OFFLINE:
		FUNC1(fdmi, bfa_fcs_lport_fdmi_sm_offline);
		break;

	default:
		FUNC0(port->fcs, event);
	}
}