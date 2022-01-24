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
typedef  int /*<<< orphan*/  wwn_t ;
struct bfa_lport_cfg_s {int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  pwwn; int /*<<< orphan*/  pid; } ;
struct bfa_fcs_lport_n2n_s {int /*<<< orphan*/  rem_port_wwn; } ;
struct TYPE_3__ {struct bfa_fcs_lport_n2n_s pn2n; } ;
struct bfa_fcs_lport_s {scalar_t__ num_rports; int /*<<< orphan*/  fcs; TYPE_2__* fabric; int /*<<< orphan*/  pid; struct bfa_lport_cfg_s port_cfg; TYPE_1__ port_topo; } ;
struct TYPE_4__ {int /*<<< orphan*/  lps; } ;

/* Variables and functions */
 int /*<<< orphan*/  N2N_LOCAL_PID ; 
 int /*<<< orphan*/  N2N_REMOTE_PID ; 
 int /*<<< orphan*/  RPSM_EVENT_DELETE ; 
 int /*<<< orphan*/  RPSM_EVENT_PLOGI_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfa_fcs_rport_s* FUNC1 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 struct bfa_fcs_rport_s* FUNC2 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*,void*,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_lport_s *port)
{
	struct bfa_fcs_lport_n2n_s *n2n_port = &port->port_topo.pn2n;
	struct bfa_lport_cfg_s *pcfg = &port->port_cfg;
	struct bfa_fcs_rport_s *rport;

	FUNC6(port->fcs, pcfg->pwwn);

	/*
	 * If our PWWN is > than that of the r-port, we have to initiate PLOGI
	 * and assign an Address. if not, we need to wait for its PLOGI.
	 *
	 * If our PWWN is < than that of the remote port, it will send a PLOGI
	 * with the PIDs assigned. The rport state machine take care of this
	 * incoming PLOGI.
	 */
	if (FUNC7
	    ((void *)&pcfg->pwwn, (void *)&n2n_port->rem_port_wwn,
	     sizeof(wwn_t)) > 0) {
		port->pid = N2N_LOCAL_PID;
		FUNC4(port->fabric->lps, N2N_LOCAL_PID);
		/*
		 * First, check if we know the device by pwwn.
		 */
		rport = FUNC2(port,
							n2n_port->rem_port_wwn);
		if (rport) {
			FUNC6(port->fcs, rport->pid);
			FUNC6(port->fcs, rport->pwwn);
			rport->pid = N2N_REMOTE_PID;
			FUNC5(rport, RPSM_EVENT_PLOGI_SEND);
			return;
		}

		/*
		 * In n2n there can be only one rport. Delete the old one
		 * whose pid should be zero, because it is offline.
		 */
		if (port->num_rports > 0) {
			rport = FUNC1(port, 0);
			FUNC0(rport == NULL);
			if (rport) {
				FUNC6(port->fcs, rport->pwwn);
				FUNC5(rport, RPSM_EVENT_DELETE);
			}
		}
		FUNC3(port, N2N_REMOTE_PID);
	}
}