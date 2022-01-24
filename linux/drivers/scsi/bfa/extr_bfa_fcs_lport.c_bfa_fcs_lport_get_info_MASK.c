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
struct bfa_lport_info_s {void* node_wwn; void* port_wwn; scalar_t__ offline_reason; scalar_t__ port_state; int /*<<< orphan*/  port_type; int /*<<< orphan*/  num_rports_inuse; int /*<<< orphan*/  max_rports_supp; int /*<<< orphan*/  num_vports_inuse; int /*<<< orphan*/  max_vports_supp; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  num_rports; TYPE_1__* fabric; TYPE_2__* fcs; int /*<<< orphan*/ * vport; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_vports; int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_MAX_RPORTS_SUPP ; 
 int /*<<< orphan*/  BFA_LPORT_TYPE_PHYSICAL ; 
 int /*<<< orphan*/  BFA_LPORT_TYPE_VIRTUAL ; 
 void* FUNC0 (struct bfa_fcs_lport_s*) ; 
 void* FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bfa_fcs_lport_s *port,
	 struct bfa_lport_info_s *port_info)
{

	FUNC3(port->fcs, port->fabric->fabric_name);

	if (port->vport == NULL) {
		/*
		 * This is a Physical port
		 */
		port_info->port_type = BFA_LPORT_TYPE_PHYSICAL;

		/*
		 * @todo : need to fix the state & reason
		 */
		port_info->port_state = 0;
		port_info->offline_reason = 0;

		port_info->port_wwn = FUNC1(port);
		port_info->node_wwn = FUNC0(port);

		port_info->max_vports_supp =
			FUNC2(port->fcs->bfa);
		port_info->num_vports_inuse =
			port->fabric->num_vports;
		port_info->max_rports_supp = BFA_FCS_MAX_RPORTS_SUPP;
		port_info->num_rports_inuse = port->num_rports;
	} else {
		/*
		 * This is a virtual port
		 */
		port_info->port_type = BFA_LPORT_TYPE_VIRTUAL;

		/*
		 * @todo : need to fix the state & reason
		 */
		port_info->port_state = 0;
		port_info->offline_reason = 0;

		port_info->port_wwn = FUNC1(port);
		port_info->node_wwn = FUNC0(port);
	}
}