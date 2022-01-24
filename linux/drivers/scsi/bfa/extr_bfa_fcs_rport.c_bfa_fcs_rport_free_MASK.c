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
struct bfa_fcs_s {int /*<<< orphan*/  num_rport_logins; } ;
struct bfa_fcs_rport_s {scalar_t__ pid; int /*<<< orphan*/  rp_drv; int /*<<< orphan*/ * bfa_rport; int /*<<< orphan*/  itnim; int /*<<< orphan*/  plogi_pending; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {struct bfa_fcs_s* fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  BFA_RPORT_SM_DELETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*,struct bfa_fcs_rport_s*) ; 
 scalar_t__ FUNC3 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_rport_s *rport)
{
	struct bfa_fcs_lport_s *port = rport->port;
	struct bfa_fcs_s *fcs = port->fcs;

	/*
	 * - delete FC-4s
	 * - delete BFA rport
	 * - remove from queue of rports
	 */
	rport->plogi_pending = BFA_FALSE;

	if (FUNC3(port)) {
		FUNC1(rport->itnim);
		if (rport->pid != 0 && !FUNC0(rport->pid))
			FUNC4(rport);
	}

	if (rport->bfa_rport) {
		FUNC5(rport->bfa_rport, BFA_RPORT_SM_DELETE);
		rport->bfa_rport = NULL;
	}

	FUNC2(port, rport);
	fcs->num_rport_logins--;
	FUNC6(rport->rp_drv);
}